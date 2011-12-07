local BZ = LibStub("LibBabble-Zone-3.0"):GetUnstrictLookupTable()
local BZR = LibStub("LibBabble-Zone-3.0"):GetReverseLookupTable()
local BCT = LibStub("LibBabble-CreatureType-3.0"):GetUnstrictLookupTable()
local BCTR = LibStub("LibBabble-CreatureType-3.0"):GetReverseLookupTable()
local Tourist = LibStub("LibTourist-3.0")

local addon = LibStub("AceAddon-3.0"):NewAddon("SilverDragon", "AceEvent-3.0", "AceTimer-3.0", "AceConsole-3.0")
SilverDragon = addon
addon.events = LibStub("CallbackHandler-1.0"):New(addon)

local debugf = tekDebug and tekDebug:GetFrame("SilverDragon")
local function Debug(...) if debugf then debugf:AddMessage(string.join(", ", tostringall(...))) end end
addon.Debug = Debug

local globaldb
function addon:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("SilverDragon2DB", {
		global = {
			mobs_byzone = {
				['*'] = {}, -- zones
			},
			mob_locations = {
				['*'] = {}, -- mob names
			},
			mob_id = {}, -- NPC ids, only available for mobs from wowhead
			mob_type = {},
			mob_level = {},
			mob_elite = {},
			mob_tameable = {},
			mob_count = {
				['*'] = 0,
			},
		},
		profile = {
			scan = 1, -- scan interval, 0 for never
			delay = 600, -- number of seconds to wait between recording the same mob
			cache_tameable = true, -- whether to alert for tameable mobs found through cache-scanning
			mouseover = true,
			targets = true,
			nameplates = true,
			cache = true,
			instances = false,
			taxi = true,
			neighbors = true,
		},
	})
	globaldb = self.db.global
end

function addon:OnEnable()
	self:RegisterEvent("PLAYER_TARGET_CHANGED")
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	if self.db.profile.scan > 0 then
		self:ScheduleRepeatingTimer("CheckNearby", self.db.profile.scan)
	end
end

function addon:PLAYER_TARGET_CHANGED()
	if self.db.profile.targets then
		self:ProcessUnit('target', 'target')
	end
end

function addon:UPDATE_MOUSEOVER_UNIT()
	if self.db.profile.mouseover then
		self:ProcessUnit('mouseover', 'mouseover')
	end
end

local function npc_id_from_guid(guid)
	if not guid then return end
	local unit_type = bit.band(tonumber("0x"..strsub(guid, 3,5)), 0x00f)
	if unit_type ~= 0x003 then
		-- npcs only
		return
	end
	-- So, interesting point, docs say that 9-12 are the ones to use here. However... in actual
	-- practive 7-10 appears to be correct.
	-- return tonumber("0x"..strsub(guid,9,12))
	return tonumber("0x"..strsub(guid,7,10))
end
function addon:UnitID(unit)
	return npc_id_from_guid(UnitGUID(unit))
end

local lastseen = {}
function addon:ShouldSave(zone, name)
	local last_saved = globaldb.mobs_byzone[zone][name]
	if not last_saved then
		return true
	end
	if time() > (last_saved + self.db.profile.delay) then
		return true
	end
	return false
end

function addon:ProcessUnit(unit, source)
	if UnitPlayerControlled(unit) then return end -- helps filter out player-pets
	local unittype = UnitClassification(unit)
	if not (unittype == 'rare' or unittype == 'rareelite') or not UnitIsVisible(unit) then return end
	-- from this point on, it's a rare
	local zone, x, y = self:GetPlayerLocation()
	if not zone then return end -- there are only a few places where this will happen
	
	local name = UnitName(unit)

	local level = (UnitLevel(unit) or -1)
	local creature_type = UnitCreatureType(unit)
	local id = self:UnitID(unit)

	local newloc = self:SaveMob(zone, name, x, y, level, unittype=='rareelite', creature_type, id)

	self:NotifyMob(zone, name, x, y, UnitIsDead(unit), newloc, source or 'target', unit)
	return true
end

function addon:SaveMob(zone, name, x, y, level, elite, creature_type, id)
	if not (zone and name) then return end
	-- saves a mob's information, returns true if this is the first time a mob has been seen at this location
	if not globaldb.mob_locations[name] then globaldb.mob_locations[name] = {} end
	if not self:ShouldSave(zone, name) then return end

	globaldb.mobs_byzone[zone][name] = time()
	globaldb.mob_level[name] = level
	if elite then globaldb.mob_elite[name] = true end
	globaldb.mob_type[name] = BCTR[creature_type]
	globaldb.mob_count[name] = globaldb.mob_count[name] + 1
	if id then
		globaldb.mob_id[name] = id
	end
	
	if not (x and y and x > 0 and y > 0) then return end

	local newloc = true
	for _, coord in ipairs(globaldb.mob_locations[name]) do
		local loc_x, loc_y = self:GetXY(coord)
		if (math.abs(loc_x - x) < 0.03) and (math.abs(loc_y - y) < 0.03) then
			-- We've seen it close to here before. (within 5% of the zone)
			newloc = false
			break
		end
	end
	if newloc then
		table.insert(globaldb.mob_locations[name], self:GetCoord(x, y))
	end
	return newloc
end

-- Returns num_locs, level, is_elite, creature_type, last_seen, times_seen, mob_id, is_tameable
function addon:GetMob(zone, name)
	if not (zone and name and globaldb.mobs_byzone[zone][name]) then
		return 0, 0, false, UNKNOWN, nil, 0, nil, nil
	end
	return #globaldb.mob_locations[name], globaldb.mob_level[name], globaldb.mob_elite[name], BCT[globaldb.mob_type[name]], globaldb.mobs_byzone[zone][name], globaldb.mob_count[name], globaldb.mob_id[name], globaldb.mob_tameable[name]
end

function addon:NotifyMob(zone, name, x, y, is_dead, is_new_location, source, unit)
	if lastseen[name] and time() < lastseen[name] + self.db.profile.delay then
		return
	end
	lastseen[name] = time()
	self.events:Fire("Seen", zone, name, x, y, is_dead, is_new_location, source, unit, globaldb.mob_id[name])
end

-- Returns name, addon:GetMob(zone, name)
function addon:GetMobByCoord(zone, coord)
	if not globaldb.mobs_byzone[zone] then return end
	for name in pairs(globaldb.mobs_byzone[zone]) do
		for _, mob_coord in ipairs(globaldb.mob_locations[name]) do
			if coord == mob_coord then
				return name, self:GetMob(zone, name)
			end
		end
	end
end

function addon:DeleteMob(zone, name)
	if not (zone and name) then return end
	if not globaldb.mobs_byzone[zone] then return end
	globaldb.mobs_byzone[zone][name] = nil
	globaldb.mob_level[name] = nil
	globaldb.mob_elite[name] = nil
	globaldb.mob_type[name] = nil
	globaldb.mob_count[name] = nil
	globaldb.mob_locations[name] = nil
end

function addon:DeleteAllMobs()
	local n = 0
	for zone,mobs in pairs(globaldb.mobs_byzone) do for name, info in pairs(mobs) do
		self:DeleteMob(zone, name)
		n = n + 1
	end end
	DEFAULT_CHAT_FRAME:AddMessage("SilverDragon: Removed "..n.." rare mobs from database.")
	self.events:Fire("DeleteAll", n)
end

-- Scanning:

function addon:CheckNearby()
	local zone = self:GetPlayerZone()
	if not zone then return end
	if (not self.db.profile.instances) and IsInInstance() then return end
	if (not self.db.profile.taxi) and UnitOnTaxi('player') then return end

	-- zone is a mapfile here, note

	if self.db.profile.targets then
		addon:ScanTargets()
	end
	if self.db.profile.nameplates then
		addon:ScanNameplates(zone)
	end
	if self.db.profile.cache then
		addon:ScanCache(zone)
	end
	if self.db.profile.neighbors then
		for z in Tourist:IterateBorderZones(self.mapfile_to_zone[zone], true) do
			if self.db.profile.nameplates then
				addon:ScanNameplates(self.zone_to_mapfile[z])
			end
			if self.db.profile.cache then
				addon:ScanCache(self.zone_to_mapfile[z])
			end
		end
	end
end

local units_to_scan = {'targettarget', 'party1target', 'party2target', 'party3target', 'party4target', 'party5target'}
function addon:ScanTargets()
	for _, unit in ipairs(units_to_scan) do
		self:ProcessUnit(unit, 'grouptarget')
	end
end

local nameplates = {}
local function process_possible_nameplate(frame)
	-- This was mostly copied from "Nameplates - Nameplate Modifications" by Biozera.
	-- Nameplates are unnamed children of WorldFrame.
	-- So: drop it if it's not the right type, has a name, or we already know about it.
	if frame:GetObjectType() ~= "Frame" or frame:GetName() or nameplates[frame] then
		return
	end
	local name, level, bar, icon, border, glow
	for i=1,frame:GetNumRegions(),1 do
		local region = select(i, frame:GetRegions())
		if region then
			local oType = region:GetObjectType()
			if oType == "FontString" then
				local point, _, relativePoint = region:GetPoint()
				if point == "BOTTOM" and relativePoint == "CENTER" then
					name = region
				elseif point == "CENTER" and relativePoint == "BOTTOMRIGHT" then
					level = region
				end
			elseif oType == "Texture" then
				local path = region:GetTexture()
				if path == "Interface\\TargetingFrame\\UI-RaidTargetingIcons" then
					icon = region
				elseif path == "Interface\\Tooltips\\Nameplate-Border" then
					border = region
				elseif path == "Interface\\Tooltips\\Nameplate-Glow" then
					glow = region
				end
			end
		end
	end
	for i=1,frame:GetNumChildren(),1 do
		local childFrame = select(i, frame:GetChildren())
		if childFrame:GetObjectType() == "StatusBar" then
			bar = childFrame
		end
	end
	if name and level and bar and border and glow then -- We have a nameplate!
		nameplates[frame] = {name = name, level = level, bar = bar, border = border, glow = glow}
		return true
	end
end

local num_worldchildren
function addon:ScanNameplates(zone)
	if GetCVar("nameplateShowEnemies") ~= "1" then
		return
	end
	if num_worldchildren ~= WorldFrame:GetNumChildren() then
		num_worldchildren = WorldFrame:GetNumChildren()
		for i=1, num_worldchildren, 1 do
			process_possible_nameplate(select(i, WorldFrame:GetChildren()))
		end
	end
	
	local zone_mobs = globaldb.mobs_byzone[zone]
	if not zone_mobs then return end
	for nameplate, regions in pairs(nameplates) do
		local name = regions.name:GetText()
		if nameplate:IsVisible() and zone_mobs[name] and (not lastseen[name] or (lastseen[name] < (time() - self.db.profile.delay))) then
			local current_zone, x, y = self:GetPlayerLocation()
			self:NotifyMob(current_zone, name, x, y, false, false, "nameplate", false)
			break -- it's pretty unlikely there'll be two rares on screen at once
		end
	end
end

local already_cached = {}
local first_cachescan = true
local cache_tooltip = CreateFrame("GameTooltip", "SDCacheTooltip")
cache_tooltip:AddFontStrings(
	cache_tooltip:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
	cache_tooltip:CreateFontString("$parentTextRight1", nil, "GameTooltipText")
)

local function is_cached(id)
	-- this doesn't work with just clearlines and the setowner outside of this, and I'm not sure why
	cache_tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
	cache_tooltip:SetHyperlink(("unit:0xF53%05X00000000"):format(id))
	return cache_tooltip:IsShown()
end
addon.is_cached = is_cached

addon.already_cached = already_cached

function addon:ScanCache(zone)
	if first_cachescan then
		for mob, id in pairs(globaldb.mob_id) do
			if is_cached(id) then
				already_cached[id] = true
			end
		end
		first_cachescan = false
		return
	end
	-- Debug("Scanning Cache", zone, globaldb.mobs_byzone[zone])
	
	local zone_mobs = globaldb.mobs_byzone[zone]
	if not zone_mobs then return end
	for mob, lastseen in pairs(zone_mobs) do
		local id = globaldb.mob_id[mob]
		-- Debug("Checking for", id, mob, lastseen)
		if id and (not globaldb.mob_tameable[mob] or self.db.profile.cache_tameable) and not already_cached[id] and is_cached(id) then
			-- Debug("They're new!")
			already_cached[id] = true
			local current_zone, x, y = self:GetPlayerLocation()
			self:NotifyMob(current_zone, mob, x, y, false, false, "cache", false)
		end
	end
	first_cachescan = false
end
addon.RegisterCallback(addon, "Import", function()
	if first_cachescan then
		table.wipe(already_cached)
		first_cachescan = true
	end
end)

addon:RegisterChatCommand("sdcached", function()
	local lookup = {}
	for mob,id in pairs(globaldb.mob_id) do
		lookup[id] = mob
	end
	local output
	addon:Print("The following mobs are in the NPC cache, and so will not be detected by the cache scanner.")
	for id,_ in pairs(already_cached) do
		addon:Print(" ", lookup[id])
		output = true
	end
	if not output then
		addon:Print("Nothing")
	end
end)

-- Utility:

addon.round = function(num, precision)
	return math.floor(num * math.pow(10, precision) + 0.5) / math.pow(10, precision)
end

function addon:FormatLastSeen(t)
	t = tonumber(t)
	if not t or t == 0 then return 'Never' end
	local currentTime = time()
	local minutes = math.ceil((currentTime - t) / 60)
	if minutes > 59 then
		local hours = math.ceil((currentTime - t) / 3600)
		if hours > 23 then
			return math.ceil((currentTime - t) / 86400).." day(s)"
		else
			return hours.." hour(s)"
		end
	else
		return minutes.." minute(s)"
	end
end

-- location code from here on in has been heavily modified by mysticalos
-- see http://www.wowace.com/addons/silver-dragon/tickets/86-better-player-location-code/
local continent_list = { GetMapContinents() }
local zone_to_mapfile = {}
local mapfile_to_zone = {}
local currentContinent = nil
local currentZone = nil
for C in pairs(continent_list) do
	local zones = { GetMapZones(C) }
	continent_list[C] = zones
	for Z, Zname in ipairs(zones) do
		SetMapZoom(C, Z)
		zones[Z] = GetMapInfo()
		--Fix bug where silver dragon will fail to detect, or populate rares in two diff zones for different phases.
		if zones[Z] == "Hyjal_terrain1" then zones[Z] = "Hyjal" end
		if zones[Z] == "TwilightHighlands_terrain1" then zones[Z] = "TwilightHighlands" end
		if zones[Z] == "Uldum_terrain1" then zones[Z] = "Uldum" end
		zone_to_mapfile[Zname] = zones[Z]
		mapfile_to_zone[zones[Z]] = Zname
	end
end
addon.continent_list = continent_list
addon.zone_to_mapfile = zone_to_mapfile
addon.mapfile_to_zone = mapfile_to_zone

-- Blizzard has started sending us to zones that aren't returned by
-- GetMapZones... they tend to be continent -1, zone 0. So I'm making up
-- a convention of storing them under their actual areaid and remembering
-- that as the current zone when it's given as 0
if not continent_list[-1] then
	continent_list[-1] = {}
end
continent_list[-1][795] = "MoltenFront"
zone_to_mapfile[BZ["Molten Front"]] = "MoltenFront"
mapfile_to_zone["MoltenFront"] = BZ["Molten Front"]
continent_list[-1][823] = "DarkmoonFaireIsland"
zone_to_mapfile[BZ["Darkmoon Island"]] = "DarkmoonFaireIsland"
mapfile_to_zone["DarkmoonFaireIsland"] = BZ["Darkmoon Island"]

local function GetCurrentMapZoneSafe()
	local zone = GetCurrentMapZone()
	if zone == 0 then
		return GetCurrentMapAreaID(), zone
	end
	return zone, zone
end

function addon:ZONE_CHANGED_NEW_AREA()
	if WorldMapFrame:IsVisible() then--World Map is open
		local C, Z, actualZ = GetCurrentMapContinent(), GetCurrentMapZoneSafe()--Save current map settings.
		SetMapToCurrentZone()
		local actualZ2
		currentContinent, currentZone, actualZ2 = GetCurrentMapContinent(), GetCurrentMapZoneSafe()--Get right info after we set map to right place.
		if currentContinent ~= C or currentZone ~= actualZ then
			SetMapZoom(C, Z)--Restore old map settings if they differed to what they were prior to forcing mapchange and user has map open.
		end
	else--Map is not open, no reason to go extra miles, just force map to right zone and get right info.
		SetMapToCurrentZone()
		currentContinent, currentZone = GetCurrentMapContinent(), GetCurrentMapZoneSafe()--Get right info after we set map to right place.
	end
	self.events:Fire("ZoneChanged", currentContinent, currentZone)
end

--Zone functions split into 2, location, and coords. There is no reason to spam check player coords and do complex map checks when we only need zone.
--So this should save a lot of wasted calls.
function addon:GetPlayerZone()--Simplier function that just uses cached zone from last actual zone change to return current zone we are in and scanning.
	if IsInInstance() then
		return BZR[GetRealZoneText()]
	end
	--Silver dragon loads AFTER first ZONE_CHANGED_NEW_AREA on login, so we need a hack for initial lack of ZONE_CHANGED_NEW_AREA.
	if currentContinent == nil and currentZone == nil then
		self:ZONE_CHANGED_NEW_AREA()
	end
	if not (continent_list[currentContinent] and continent_list[currentContinent][currentZone]) then
		return
	end
	return continent_list[currentContinent][currentZone]
end

function addon:GetPlayerLocation()--Advanced function that actually gets the player coords for when we actually find/save a rare. No reason to run this function every second though.
	local C, Z, actualZ = GetCurrentMapContinent(), GetCurrentMapZoneSafe()--Save current map settings.
	SetMapToCurrentZone()
	local x, y = GetPlayerMapPosition('player')--Get right info after we set map to right place.
	local C2, Z2 = currentContinent, currentZone--Check what map was set to compared to actual current zone cached from when we last saw ZONE_CHANGED_NEW_AREA
	if C2 ~= C or Z2 ~= Z and WorldMapFrame:IsVisible() then
		SetMapZoom(C, actualZ)--Restore old map settings if they differed to what they were prior to forcing mapchange and user has map open.
	end
	C, Z = C2, Z2
	if x <= 0 and y <= 0 then
		--This should never happen, no zone is without map anymore.
		return BZR[GetRealZoneText()], 0, 0
	end
	if IsInInstance() then
		return BZR[GetRealZoneText()], x, y
	end
	if not (continent_list[C] and continent_list[C][Z]) then
		return
	end
	return continent_list[C][Z], x, y
end

function addon:GetCoord(x, y)
	return floor(x * 10000 + 0.5) * 10000 + floor(y * 10000 + 0.5)
end

function addon:GetXY(coord)
	return floor(coord / 10000) / 10000, (coord % 10000) / 10000
end


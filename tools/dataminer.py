#!/usr/bin/env python3

import argparse
import sys
import requests
import requests_cache

import npc
import npc.local
from npc.wowdb import WowdbNPC
from npc.wowhead import WowheadNPC


blacklist = (
    50091, # untargetable Julak-Doom component
    77795, # duplicate Echo of Murmur
)
force_include = (
    17591, # Blood Elf Bandit
    50409, # Mysterious Camel Figurine
    50410, # Mysterious Camel Figurine (remnants)
    3868, # Blood Seeker (thought to share Aeonaxx's spawn timer)
    51236, # Aeonaxx (engaged)
    58336, # Darkmoon Rabbit
    # Lost and Found!
    64004, # Ghostly Pandaren Fisherman
    64191, # Ghostly Pandaren Craftsman
    65552, # Glinting Rapana Whelk
    64272, # Jade Warrior Statue
    64227, # Frozen Trail Packer
    #In 5.2, world bosses are no longer flagged as rare, even if they are.
    #Granted, 3 of 4 probably won't be rare. We include anyways because we always have.
    64403, # Alani
    60491, # Sha of Anger
    62346, # Galleon
    69099, # Nalak
    69161, # Oondasta
    # On to Draenor
    71992, # Moonfang
    81001, # Nok-Karosh
    50992, # Gorok
    50990, # Nakk the Thunderer
    50981, # Luk'hok
    50985, # Poundfist
    51015, # Silthide
    50883, # Pathrunner
)
notes = {
    50410: "Crumbled Statue Remnants", # Mysterious Camel Figurine
    51401: "Red", # Madexx
    51402: "Green", # Madexx
    51403: "Black", # Madexx
    51404: "Blue", # Madexx
    50154: "Brown", # Madexx
    51236: "Engaged", # Aeonaxx
    69769: "Slate", # Zandalari Warbringer
    69841: "Amber", # Zandalari Warbringer
    69842: "Jade", # Zandalari Warbringer
}
expansions = {
    1: "Vanilla",
    2: "BurningCrusade",
    3: "Wrath",
    4: "Cataclysm",
    5: "Mists",
    6: "Warlords",
    7: "Legion",
}

TOC_TEMPLATE = """## Interface: 70100
## Title: SilverDragon ({exp})
## Notes: Mobs for {exp}
## Version: @project-version@
## Author: Kemayo
## eMail: kemayo at gmail dot com
## X-Category: Interface Enhancements
## X-Donate: PayPal:kemayo AT gmail DOT com
## Dependencies: SilverDragon
## LoadManagers: AddonLoader
## X-LoadOn-Always: delayed

module.lua
"""
MODULE_START_TEMPLATE = """-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data_{exp}")

function module:OnInitialize()
\tcore:RegisterMobData("{exp}", {{
"""
MODULE_END_TEMPLATE = """\t})
end
"""


def write_output(expansion, data):
    with open("../Data/{exp}/SilverDragon_{exp}.toc".format(exp=expansion), 'w') as f:
        f.write(TOC_TEMPLATE.format(exp=expansion))
    with open("../Data/{exp}/module.lua".format(exp=expansion), 'w') as f:
        f.write(MODULE_START_TEMPLATE.format(exp=expansion))
        for id, mob in sorted(data.items()):
            if id in blacklist:
                continue
            if id in notes:
                mob.add_notes(notes[id])
            f.write('\t\t[%d] = %s,\n' % (id, mob.to_lua('name', 'quest', 'vignette', 'tameable', 'notes', 'locations', 'mount', 'boss', 'faction')))
        f.write(MODULE_END_TEMPLATE)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Suck down a lot of data about rares")
    parser.add_argument('--local', action='store_true', default=True)
    parser.add_argument('--no-local', action='store_false', dest='local')
    parser.add_argument('--wowhead', action='store_true', default=True)
    parser.add_argument('--no-wowhead', action='store_false', dest='wowhead')
    parser.add_argument('--wowdb', action='store_true', default=True)
    parser.add_argument('--no-wowdb', action='store_false', dest='wowdb')
    parser.add_argument('--strip-empties', action='store_true', dest='strip_empties', default=True)
    parser.add_argument('--no-strip-empties', action='store_false', dest='strip_empties')
    parser.add_argument('--ptr', action='store_true')
    parser.add_argument('--beta', action='store_true')
    parser.add_argument('--no-cache-list', action='store_false', dest="cache_list")
    ns = parser.parse_args()

    local = {}
    wowdb = {}
    wowhead = {}

    # Using session because cookies are needed to avoid some shenanigans wowdb pulls
    session = requests_cache.CachedSession(expire_after=10 * 24 * 3600)

    if ns.local:
        print("LOADING FROM local")
        for patch, expansion in expansions.items():
            mobs = npc.local.load("../Data/{}/module.lua".format(expansion))
            for mob in mobs:
                mobs[mob].data["expansion"] = patch
            local.update(mobs)
            print("LOADED: {} ({})".format(expansion, len(mobs)))

    if ns.wowdb:
        print("LOADING FROM wowdb")
        for creature_type in npc.types.values():
            print("ACQUIRING rares for category", creature_type)
            wowdb.update(WowdbNPC.query(creature_type, session=session, ptr=ns.ptr, beta=ns.beta, cached=ns.cache_list))

        for id in force_include:
            if id not in wowdb:
                wowdb[id] = WowdbNPC(id, ptr=ns.ptr, beta=ns.beta, session=session)

    if ns.wowhead:
        print("LOADING FROM wowhead")
        for categoryid, c in npc.types.items():
            print("ACQUIRING rares for category", categoryid, c)
            for expansion in expansions:
                print("EXPANSION", expansion)
                # run per-expansion to avoid caps on results-displayed
                wowhead.update(WowheadNPC.query(categoryid, expansion, session=session, ptr=ns.ptr, beta=ns.beta, cached=ns.cache_list))

        for id in force_include:
            if id not in wowhead:
                wowhead[id] = WowheadNPC(id, ptr=ns.ptr, beta=ns.beta, session=session)

    for id, mob in list(wowdb.items()) + list(wowhead.items()):
        if id in local:
            local[id].extend(mob)
        else:
            local[id] = mob

    expansionmobs = {}
    for id, mob in local.items():
        if not ns.strip_empties or len(mob.data.get('locations', {})) == 0:
            continue
        expansion = mob.data.get('expansion')
        if expansion:
            if expansion not in expansionmobs:
                expansionmobs[expansion] = {}
            expansionmobs[expansion][id] = mob
        else:
            print("Missing expansion", mob)

    for expansion, mobs in expansionmobs.items():
        write_output(expansions.get(expansion), mobs)
        print("Data written", expansions.get(expansion))

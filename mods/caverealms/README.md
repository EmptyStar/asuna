# caverealms-lite

Based on the original minetest-caverealms mod (https://github.com/HeroOfTheWinds/minetest-caverealms/).

Adds underground realms to minetest.

This caverealms fork provides all the biomes and decorations from the original caverealms, with several additions and without the overhead of generating caves. This lowers the server resources the mod requires, for example CPU and RAM. This also removes the large lava spills created by the original caverealms.

It is specifically written to work with the mgvalleys mapgen, but will work using other mapgens as well. The mapgen used will determine the shape and size of individual caves. Mapgens that generate only smaller caves may be less suitable for use with this fork than mgvalleys.   

Note: For worlds where the original caverealms is already in use, this fork is not advised as a replacement. If used in this way, some unknown nodes and other minor issues should be expected.


## License and Contributors

Source code: FreeBSD License (Simplified)
The original caverealms was licensed as WTFPL.

Contributors:
- Zeno, Shara RedCat - This rewrite
- HeroOfTheWinds, Zeno - Original mod


## Recommended Additions

- VanessaE's HDX texturepacks provide alternative textures. For example,
https://github.com/VanessaE/hdx-128.
- ethereal mod unlocks additional content (https://github.com/tenplus1/ethereal).
- mobs_monster mod allows Dungeon Masters to spawn in the Dungeon Master's Lair biome (https://github.com/tenplus1/mobs_monster). 
- mobs_redo is required to run mobs_monster (https://github.com/tenplus1/mobs_redo).
- abritorch adds coloured torches made with caverealms items (https://github.com/Ezhh/abritorch).

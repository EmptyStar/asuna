Advance Biome Decoration API
============================

Create advanced, complex biome decorations with the Advanced Biome Decoration API! While the internal Minetest biome API can be used to create many types of biome decorations, it has some limitations. Standard biome decorations cannot:

- Place wallmounted decorations on walls
- Check for complex patterns of nodes to determine placement, e.g., checking multiple nodes high above the ground
- Create structures that vary placement based on arbitrary conditions, e.g., place different colors of nodes based on whether x/z coordinates are odd or even

In order to facilitate more complex decorations, the Advanced Biome Decoration API uses a powerful and performant mechanism for targeting advanced decorations to the environment. The advanced decoration process works like so:

1. Call `abdecor.register_advanced_decoration(...)` to register an advanced decoration
2. Self-destructing 'mapgen nodes' are placed to mark locations where advanced decorations should be generated
3. The biome API gennotify mechanism is used to identify the mapgen nodes during map generation
4. An advanced decoration function (supplied during registration) is called for each mapgen node to generate the advanced decoration
5. All advanced decorations are written to the map and rendered in the world

API
---

Advanced decorations are created via `abdecor.register_advanced_decoration(name, decor, fn, vm_flags)`. This function returns `true` when an advanced decoration registration is successful and `false` if the registration was not successful. If the function returns `false`, check your debug.txt file to see why it rejected registration and make any adjustments as necessary.

This function's parameters are explained in the sections below.

### `name`

This is a simple string used to name the decoration. It should contain only `[a-zA-Z-0-9_]`. The name must be unique across all mods that use this API, so it is advised to do some simple namespacing, e.g., `mymod_mydecor1`.

### `decor`

This is a table that represents a partial decoration definition as described in [the decoration definition section of the Minetest API docs](https://github.com/minetest/minetest/blob/cf5add14728f6f00eec0cc8221050ba91e6a9646/doc/lua_api.txt#L9140). This decoration definition is used to place mapgen nodes for your decoration in the environment, so you should try to target nodes in the environment that are closest to where you want to generate your advanced decoration.

The following decoration definition fields are set/overridden by this API and therefore should not be specified:

- `deco_type = "simple"`
- `name = <internal value>`
- `decoration = <internal mapgen node value>`

### `fn`

This is a function that is called for each mapgen node that is placed in the environment for your advanced decoration. It is responsible for actually checking the surrounding nodes and placing nodes according to how they should be placed in the current mapchunk. It is effectively the implementation of your advanced decoration.

This function gets called for each advanced decoration that can be placed and gets passed the following parameters for each call:

- `position`: This is a table that represents the absolute position of the current decoration in the form of `{ x = <int>, y = <int>, z = <int> }`.
- `voxelarea`: This is a [VoxelArea](https://github.com/minetest/minetest/blob/cf5add14728f6f00eec0cc8221050ba91e6a9646/doc/lua_api.txt#L4495) that represents the area of the current mapchunk being generated. It can be used to index the following other parameters.
- `data`: This is a flat [VoxelManip](https://github.com/minetest/minetest/blob/cf5add14728f6f00eec0cc8221050ba91e6a9646/doc/lua_api.txt#L4231) table that holds the node data for the current mapchunk being generated. This table can be read/written like any usual mapgen VoxelManip table.
- `param2`: This optional parameter is also a flat VoxelManip table, but it instead holds the [param2](https://github.com/minetest/minetest/blob/cf5add14728f6f00eec0cc8221050ba91e6a9646/doc/lua_api.txt#L1032) values for the nodes in the current mapchunk. This can be useful for rotating nodes, placing wallmounted nodes, etc.

This function does not directly interact with the VoxelManip object returned by `minetest.get_mapgen_object("voxelmanip")` and instead will only modify the data and/or param2 tables passed into it which are managed by the Advanced Biome Decoration API.

### `vm_flags`

This optional parameter is a table that defines flags that each determine any special needs for an advanced decoration. Its keys and values are simple boolean flags that work as follows:

- `param2`: Whether or not to load/use the VoxelManip param2 data for the current mapchunk. This should be set if your advanced decoration function needs access to param2 data. If your decoration does not use param2, then this flag should remain unset for better performance. Defaults to `false`.
- `liquid`: Whether or not your advanced decoration function manipulates liquids. If set, then `VoxelManip.update_liquids()` is called before writing the values back to the mapchunk. This ensures that generated liquids flow as expected. Set if your advanced decoration function places liquids, else leave unset for better performance. Defaults to `false`.

For clarity, the default vm_flags table looks like this:

```lua
{
  param2 = false, -- do not load param2 data
  liquid = false, -- do not update liquids
}
```

Examples
--------

This API comes with two example decorations that illustrate a couple things that the API can do: 

- [Ocean waterfalls](https://github.com/EmptyStar/abdecor/tree/main/ocean_waterfalls.lua) -- Generates water in the sides of cliffs that overlook oceans. Depends on Minetest Game.
- [Hanging vines](https://github.com/EmptyStar/abdecor/tree/main/hanging_vines.lua) --  Generates hanging vines on the undersides of cliffs in humid/swampy biomes. Depends on Ethereal.

These examples are disabled by default. They can be enabled via settings under Settings > All Settings > Content: Mods > Advanced Biome Decoration API.
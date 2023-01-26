
flowerpot
=========

This minetest mod adds a simple, single-node, non-entity flowerpot
that can contain `plantlike` drawtype nodes.

The player can place these pots as normal nodes, and then right-click
the pot with a plant or plantlike node, and the pot then will contain
a slightly smaller version of the plant. If punched, the plant that
was put in the pot will be returned to the puncher.

The concept works through the use of object materials. The empty
flowerpot node has the same model, but part of the mesh is transparent
and therefore not visible. If a plant is inserted, the transparent
textures are replaced with the texture of the plant node, and thus
it looks like the plant is inserted, while effectively the pot is a
single node without metadata.

There are no crafting recipes for each variant. The player can craft
pots and potentially use `/giveme` to give filled versions of the
flowerpot, but the creative inventory does not contain them as they
are easily filled already.

The model was made in blender from scratch by the author.

The texture of the flowerpot itself was created from the flowerpot
texture of the excellent Isabella II texture pack, which is Public
Domain. The texture has been reworked to allow for a more detailed
texturing of the flowerpot model.

The flowerpot mod has an API that can be used by other mods to create
new plant-flowerpot combinations. See api.md for usage information.


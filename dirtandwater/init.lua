-- created by Kalimas, kalimas@gmail.com
-- Load API

dofile(minetest.get_modpath(minetest.get_current_modname()).."/storages.lua")
dofile(minetest.get_modpath(minetest.get_current_modname()).."/alias.lua")
----------------------------

--COMPRESSED LEAVES Lv 1 to 3
minetest.register_node("dirtandwater:comp_leaves1", {
    description = "compressed leaves lv1",
    tiles = {"comp_leaves1.png"},
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	is_ground_content = false,
    groups = {snappy=3},
	drop = "dirtandwater:comp_leaves1",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("dirtandwater:comp_leaves2", {
    description = "compressed leaves lv2",
    tiles = {"comp_leaves2.png"},
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	is_ground_content = false,
    groups = {snappy=2, oddly_breakable_by_hand=2},
	drop = "dirtandwater:comp_leaves2",
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("dirtandwater:comp_leaves3", {
    description = "compressed leaves lv3",
    tiles = {"comp_leaves3.png"},
	drawtype = "allfaces_optional",
	visual_scale = 1.3,
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	drop = "dirtandwater:comp_leaves3",
	sounds = default.node_sound_leaves_defaults(),
})
-- Glow leaves frame
minetest.register_node("dirtandwater:glow_l_frame", {
    description = "Glowing framed leaves",
    tiles = {"glow_leaves.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	node_box = {
			type = "wallmounted",
			wall_top    = {-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			wall_side   = {-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
		},
	legacy_wallmounted = true,
    is_ground_content = false,
    sunlight_propagates = true,
	inventory_image = "glow_leaves.png",
	drop = "dirtandwater:glow_l_frame",
    sounds = default.node_sound_glass_defaults(),
    groups = {cracky=3,oddly_breakable_by_hand=3},
	light_source = 9,

})
-- Glow steel leave
minetest.register_node("dirtandwater:steel_glow_l", {
    description = "Glowing steel leaves",
    tiles = {"glow_steel_leaves.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	node_box = {
			type = "wallmounted",
			wall_top    = {-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			wall_side   = {-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
		},
	legacy_wallmounted = true,
    is_ground_content = false,
    sunlight_propagates = true,
	inventory_image = "glow_steel_leaves.png",
	drop = "dirtandwater:steel_glow_l",
    sounds = default.node_sound_glass_defaults(),
    groups = {cracky=3,oddly_breakable_by_hand=3},
	light_source = 14,

})
-- Glow gold leaves
minetest.register_node("dirtandwater:glow_gold_l", {
    description = "Gold glowing leaves",
    tiles = {"glow_gold_leaves.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	node_box = {
			type = "wallmounted",
			wall_top    = {-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
			wall_side   = {-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
		},
	legacy_wallmounted = true,
    is_ground_content = false,
    sunlight_propagates = true,
	inventory_image = "glow_gold_leaves.png",
	drop = "dirtandwater:glow_gold_l",
    sounds = default.node_sound_glass_defaults(),
    groups = {cracky=3,oddly_breakable_by_hand=3},
	light_source = 32,

})
-- STAIRS, SLAB, Table, chair
local function rotate_and_place(itemstack, placer, pointed_thing)
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	local param2 = 0

	if placer then
		local placer_pos = placer:get_pos()
		if placer_pos then
			param2 = minetest.dir_to_facedir(vector.subtract(p1, placer_pos))
		end

		local finepos = minetest.pointed_thing_to_face_pos(placer, pointed_thing)
		local fpos = finepos.y % 1

		if p0.y - 1 == p1.y or (fpos > 0 and fpos < 0.5)
				or (fpos < -0.5 and fpos > -0.999999999) then
			param2 = param2 + 20
			if param2 == 21 then
				param2 = 23
			elseif param2 == 23 then
				param2 = 21
			end
		end
	end
	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end
-- Register stair
minetest.register_node("dirtandwater:leave_stairs", {
    description = "Compressed leaves stairs",
    tiles = {"comp_leaves3.png"},
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_leaves_defaults(),
    drawtype = "nodebox",
    paramtype = "light",
	paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
			{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	drop = "dirtandwater:leave_stairs",
})
-- SLAB
minetest.register_node("dirtandwater:leave_slab", {
    description = "Compressed leaves slab",
    tiles = {"comp_leaves3.png"},
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_leaves_defaults(),
    drawtype = "nodebox",
    paramtype = "light",
	paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
        },
    },
	drop = "dirtandwater:leave_slab",
})
-- Register table
minetest.register_node("dirtandwater:comp_leave_table", {
    description = "Compressed leaves table",
    tiles = {
	"node_top.png",
	"comp_leaves3.png",
	"comp_leaves3.png",
	"comp_leaves3.png",
	"comp_leaves3.png",
	"comp_leaves3.png",
	},
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_leaves_defaults(),
    drawtype = "nodebox",
    paramtype = "light",
	paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
			{-0.5, 0.0625, -0.5, 0.5, 0.25, 0.5},
			{-1/16, -0.5, -1/16, 1/16, 0.0625, 1/16},
			},
		},
	drop = "dirtandwater:comp_leave_table",
})
-- Chair
minetest.register_node("dirtandwater:leave_chair", {
    description = "Compressed leaves chair",
    tiles = {"comp_leaves2.png"},
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_leaves_defaults(),
    drawtype = "nodebox",
    paramtype = "light",
	paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
			{-0.4375, -0.1875, -0.375, 0.4375, -0.0625, 0.4375},
			{-0.375, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.3125, -0.25, -0.0625, -0.1875}, 
			{0.25, -0.5, -0.3125, 0.375, -0.0625, -0.1875}, 
		},
	},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	drop = "dirtandwater:leave_chair",
})
minetest.register_node("dirtandwater:leave_wall", {
    description = "Compressed leaves wall",
    tiles = {"comp_leaves_wall.png"},
	is_ground_content = false,
    groups = {snappy=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_leaves_defaults(),
    drawtype = "nodebox",
    paramtype = "light",
	paramtype2 = "facedir",
    node_box = {
        type = "fixed",
        fixed = {
			{-0.5, -0.5, -0.125, 0.5, 0.3125, 0.125},
			{-0.5, -0.5, -0.125, -0.375, 0.5, 0.125},
			{0.375, -0.5, -0.125, 0.5, 0.5, 0.125}, 
		},
	},
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			return rotate_and_place(itemstack, placer, pointed_thing)
		end,
	drop = "dirtandwater:leave_wall",
})
-- RECIPE
minetest.register_craft({
	output = 'dirtandwater:leave_wall 6',
	recipe = {
		{'default:stick','','default:stick'},
		{'default:stick','dirtandwater:comp_leaves2', 'default:stick'},
		{'default:stick', '','default:stick'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_chair',
	recipe = {
		{'default:stick','',''},
		{'dirtandwater:leave_slab','dirtandwater:leave_slab', ''},
		{'default:stick', 'default:stick', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leave_table',
	recipe = {
		{'','dirtandwater:leave_slab', ''},
		{'', 'default:stick', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_stairs 24',
	recipe = {
		{'dirtandwater:comp_leaves3','', ''},
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', ''},
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves3',
	recipe = {
		{'dirtandwater:leave_stairs', 'dirtandwater:leave_stairs', ''},
		{'dirtandwater:leave_stairs', 'dirtandwater:leave_stairs', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_slab 12',
	recipe = {
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves3',
	recipe = {
		{'dirtandwater:leave_slab', 'dirtandwater:leave_slab', ''},
		{'dirtandwater:leave_slab', 'dirtandwater:leave_slab', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:glow_l_frame 4',
	recipe = {
		{'default:torch','dirtandwater:comp_leaves1', 'default:torch'},
		{'default:glass', 'dirtandwater:comp_leaves1', 'default:glass'},
		{'default:torch', 'dirtandwater:comp_leaves1', 'default:torch'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:steel_glow_l 4',
	recipe = {
		{'default:torch','dirtandwater:comp_leaves1', 'default:torch'},
		{'default:glass', 'default:steel_ingot', 'default:glass'},
		{'default:torch', 'dirtandwater:comp_leaves1', 'default:torch'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:glow_gold_l 4',
	recipe = {
		{'default:torch','dirtandwater:comp_leaves2', 'default:torch'},
		{'default:glass', 'default:gold_ingot', 'default:glass'},
		{'default:torch', 'dirtandwater:comp_leaves2', 'default:torch'},
	}
})
minetest.register_craft({
	output = 'default:leaves 9',
	recipe = {
		{'dirtandwater:comp_leaves1'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves1 9',
	recipe = {
		{'dirtandwater:comp_leaves2'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves2 9',
	recipe = {
		{'dirtandwater:comp_leaves3'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves1',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})	
minetest.register_craft({
	output = 'dirtandwater:comp_leaves2',
	recipe = {
		{'dirtandwater:comp_leaves1', 'dirtandwater:comp_leaves1', 'dirtandwater:comp_leaves1'},
		{'dirtandwater:comp_leaves1', 'dirtandwater:comp_leaves1', 'dirtandwater:comp_leaves1'},
		{'dirtandwater:comp_leaves1','dirtandwater:comp_leaves1', 'dirtandwater:comp_leaves1'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:comp_leaves3',
	recipe = {
		{'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
		{'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
		{'dirtandwater:comp_leaves2','dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
	}
})
minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1'},
		{'default:grass_1', 'default:grass_1', 'default:grass_1'},
	}
})
minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
		{'default:junglegrass', 'default:junglegrass', 'default:junglegrass'},
	}
})
minetest.register_craft({
	output = 'default:dirt',
	recipe = {
		{'default:dry_grass_1', 'default:dry_grass_1', 'default:dry_grass_1'},
		{'default:dry_grass_1', 'default:dry_grass_1', 'default:dry_grass_1'},
		{'default:dry_grass_1', 'default:dry_grass_1', 'default:dry_grass_1'},
	}
})
minetest.register_craft({
	output = 'default:dirt 3',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'default:stick', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})
minetest.register_craft({
	output = 'default:dirt 6',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:wood', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})
minetest.register_craft({
	output = 'default:dirt 9',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:tree', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
	}
})
minetest.register_craft({
	output = 'bucket:bucket_water',
	recipe = {
		{'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
		{'dirtandwater:comp_leaves2', 'bucket:bucket_empty', 'dirtandwater:comp_leaves2'},
		{'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
	}
})
minetest.register_craft({
	output = 'default:water_source',
	recipe = {
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3'},
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3'},
		{'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3', 'dirtandwater:comp_leaves3'},
	}
})

-- FUEL

minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:comp_leaves1",
    burntime = 30,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:comp_leaves2",
    burntime = 180,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_chair",
    burntime = 180,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_wall",
    burntime = 180,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:comp_leave_table",
    burntime = 180,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_stairs",
    burntime = 360,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_slab",
    burntime = 360,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:comp_leaves3",
    burntime = 600,
})

-- SNOW and ICE melting

minetest.register_craft({
	type = "cooking",
	output = "default:river_water_source",
	recipe = "default:snow",
	cooktime = 360,
})
minetest.register_craft({
	type = "cooking",
	output = "default:river_water_source",
	recipe = "default:snowblock",
	cooktime = 360,
})
minetest.register_craft({
	type = "cooking",
	output = "default:river_water_source",
	recipe = "default:ice",
	cooktime = 360,
})
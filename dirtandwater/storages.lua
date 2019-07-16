minetest.register_node("dirtandwater:leave_shelf", {
	description = "Leaves shelf",
	tiles ={		
	    "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"shelf_front.png"
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,3;]"..
				"list[current_player;main;0,5;8,3;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*3)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leave_shelf",
})
minetest.register_node("dirtandwater:chest", {
	description = "Leaves chest",
	tiles ={	
	    "chest_top.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"chest_front.png"
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:chest",
})
minetest.register_node("dirtandwater:leave_half_shelf", {
	description = "Leaves half shelf",
	sunlight_propagates = true,
	tiles ={		
	    "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"shelf_front.png"
		},
	drawtype = "nodebox",
	node_box = {
        type = "fixed",
        fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
        },
    },
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leave_half_shelf",
})
minetest.register_node("dirtandwater:leave_dhalf_shelf", {
	description = "Leaves down half shelf",
	sunlight_propagates = true,
	tiles ={		
	    "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"shelf_front.png"
		},
	drawtype = "nodebox",
	node_box = {
        type = "fixed",
        fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
        },
    },
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leave_dhalf_shelf",
})
minetest.register_node("dirtandwater:leaves_small_box", {
	description = "Leaves small box",
	sunlight_propagates = true,
	tiles ={		
	    "chest_top.png",
		"chest_front.png",
		"chest_front.png",
		"chest_front.png",
		"chest_front.png",
		"chest_front.png",
		},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.125, 0.3125},
			{-0.125, -0.4375, -0.0625, 0.125, 0.0625, 0.0625},
		}
	},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*1)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leaves_small_box",
})
minetest.register_node("dirtandwater:leaves_cabinet", {
	description = "Leaves cabinet",
	tiles ={		
	    "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"wall_st_front.png",
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leaves_cabinet",
})
minetest.register_node("dirtandwater:leaves_cabinet2", {
	description = "Leaves cabinet bottom",
	tiles ={		
	    "node_top.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"wall_st_front_down.png",
		},
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leaves_cabinet2",
})
minetest.register_node("dirtandwater:leave_half_cabinet", {
	description = "Leaves half cabinet",
	sunlight_propagates = true,
	tiles ={		
		"chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"wall_st_front.png",
		},
	drawtype = "nodebox",
	node_box = {
        type = "fixed",
        fixed = {
				{-0.5, -0.5, -0, 0.5, 0.5, 0.5},
        },
    },
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leave_half_cabinet",
})
minetest.register_node("dirtandwater:leave_half_cabinet_b", {
	description = "Leaves half cabinet bottom",
	sunlight_propagates = true,
	tiles ={		
	    "node_top.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		 "chest_sides.png",
		"wall_st_front_down.png",
		},
	drawtype = "nodebox",
	node_box = {
        type = "fixed",
        fixed = {
				{-0.5, -0.5, -0, 0.5, 0.5, 0.5},
        },
    },
	paramtype2 = "facedir",
	groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	is_ground_content = false,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",
				"size[8,9]"..
				"list[current_name;main;0,0;8,4;]"..
				"list[current_player;main;0,5;8,4;]" ..
				"listring[]")
		meta:set_string("infotext", "Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*2)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	drop = "dirtandwater:leave_half_cabinet_b",
})
-- recipe
minetest.register_craft({
	output = 'dirtandwater:leaves_cabinet',
	recipe = {
		{'group:wood', 'dirtandwater:comp_leaves2', 'group:wood'},
		{'dirtandwater:comp_leaves2', 'group:wood', 'dirtandwater:comp_leaves2'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leaves_cabinet2',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'dirtandwater:comp_leaves2', 'group:wood', 'dirtandwater:comp_leaves2'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_half_cabinet_b 2',
	recipe = {
		{'dirtandwater:leaves_cabinet2', '', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leaves_cabinet2',
	recipe = {
		{'dirtandwater:leave_half_cabinet_b', 'dirtandwater:leave_half_cabinet_b', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_half_cabinet 2',
	recipe = {
		{'dirtandwater:leaves_cabinet', '', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leaves_cabinet',
	recipe = {
		{'dirtandwater:leave_half_cabinet', 'dirtandwater:leave_half_cabinet', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_dhalf_shelf',
	recipe = {
		{'dirtandwater:leave_half_shelf', '', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_half_shelf',
	recipe = {
		{'dirtandwater:leave_dhalf_shelf', '', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leaves_small_box 2',
	recipe = {
		{'', 'group:wood', ''},
		{'default:stick', 'dirtandwater:comp_leaves2', 'default:stick'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_shelf',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2', 'dirtandwater:comp_leaves2'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_half_shelf 2',
	recipe = {
		{'', 'dirtandwater:leave_shelf', ''},
	}
})
minetest.register_craft({
	output = 'dirtandwater:leave_shelf',
	recipe = {
		{'', 'dirtandwater:leave_half_shelf', 'dirtandwater:leave_half_shelf'},
	}
})
minetest.register_craft({
	output = 'dirtandwater:chest',
	recipe = {
		{'group:wood', 'group:wood', 'group:wood'},
		{'group:wood', 'dirtandwater:comp_leaves2', 'group:wood'},
		{'group:wood', 'group:wood', 'group:wood'},
	}
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:chest",
    burntime = 240,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_shelf",
    burntime = 240,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leaves_cabinet",
    burntime = 240,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_half_cabinet",
    burntime = 120,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_half_shelf",
    burntime = 120,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_dhalf_shelf",
    burntime = 120,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leaves_small_box",
    burntime = 90,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leave_half_cabinet_b",
    burntime = 120,
})
minetest.register_craft({
    type = "fuel",
    recipe = "dirtandwater:leaves_cabinet2",
    burntime = 240,
})
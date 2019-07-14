Minetest game mod
-----------------------------------
DIRT AND WATER (LEAVES) v1.0
-----------------------------------
1. Install
2. Crafts
3. Recipe
-----------------------------------
place "dirtandwater" directory in ..\minetest\mods\

+--mods
| |
| \-dirtandwater
|   |   depends.txt
|   |   init.lua
|   |   license.txt
|   |   mod.conf
|   |   readme.txt
|   |   
|   \---textures
|           comp_leaves1.png
|           comp_leaves2.png
|           comp_leaves3.png
|           comp_leaves_wall.png
|           glow_gold_leaves.png
|           glow_leaves.png
|           glow_steel_leaves.png
------------------------------------
To enable the mod, go to the configure world window in the main menu or write
  load_mod_<modname> = true
in world.mt in the world directory.
==========================================================
2.CRAFTS
------------------------------------
Turn leaves into:
compressed leaves lv1 - fuel 30sec
compressed leaves lv2 - fuel 360sec
compressed leaves lv3 - fuel 600sec
Glowing leaves (framed light source)
Glowing gold leaves (framed light source)
Glowing steel leaves (framed light source)
compressed leaves stairs
compressed leaves slab
compressed leaves table
compressed leaves wall
compressed leaves chair
dirt
Water
water bucket

-----------------------------------
Melt(cook) ice, snow and snowblock to river water - 360sec

3.RECIPE
-----------------------------------
	output = ' leave_wall 6',
	recipe = {
		{'stick','','stick'},
		{'stick','leaves2', 'stick'},
		{'stick', '','stick'},
 =====
	output = ' leave_chair',
	recipe = {
		{' :stick','',''},
		{' leave_slab',' leave_slab', ''},
		{' :stick', ' :stick', ''},
 =====
	output = 'leave_table',
	recipe = {
		{'',' leave_slab', ''},
		{'', ' :stick', ''},
 =====
	output = 'leave_stairs 24',
	recipe = {
		{' comp_leaves3','', ''},
		{' comp_leaves3', ' comp_leaves3', ''},
		{' comp_leaves3', ' comp_leaves3', ' comp_leaves3'},
 =====
	output = '  comp_leaves3',
	recipe = {
		{' leave_stairs', ' leave_stairs', ''},
		{' leave_stairs', ' leave_stairs', ''},
 =====
	output = ' leave_slab 12',
	recipe = {
		{' comp_leaves3', ' comp_leaves3', ' comp_leaves3'},
 =====
	output = '  comp_leaves3',
	recipe = {
		{' leave_slab', ' leave_slab', ''},
		{' leave_slab', ' leave_slab', ''},
 =====
	output = 'glow leave 4',
	recipe = {
		{' :torch',' comp_leaves1', ' :torch'},
		{' :glass', ' comp_leaves1', ' :glass'},
		{' :torch', ' comp_leaves1', ' :torch'},
 =====
	output = ' steel glow leave 4',
	recipe = {
		{' :torch',' comp_leaves1', ' :torch'},
		{' :glass', ' :steel_ingot', ' :glass'},
		{' :torch', ' comp_leaves1', ' :torch'},
 =====
	output = ' glow gold leave 4',
	recipe = {
		{' :torch',' comp_leaves2', ' :torch'},
		{' :glass', ' :gold_ingot', ' :glass'},
		{' :torch', ' comp_leaves2', ' :torch'},
 =====
	output = ' :leaves 9',
	recipe = {
		{' comp_leaves1'},
 =====
	output = ' comp_leaves1 9',
	recipe = {
		{' comp_leaves2'},
 =====
	output = ' comp_leaves2 9',
	recipe = {
		{' comp_leaves3'},
 =====
	output = ' comp_leaves1',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
 =====
	output = ' comp_leaves2',
	recipe = {
		{' comp_leaves1', ' comp_leaves1', ' comp_leaves1'},
		{' comp_leaves1', ' comp_leaves1', ' comp_leaves1'},
		{' comp_leaves1',' comp_leaves1', ' comp_leaves1'},
 =====
	output = ' comp_leaves3',
	recipe = {
		{' comp_leaves2', ' comp_leaves2', ' comp_leaves2'},
		{' comp_leaves2', ' comp_leaves2', ' comp_leaves2'},
		{' comp_leaves2',' comp_leaves2', ' comp_leaves2'},
 =====
	output = ' :dirt',
	recipe = {
		{' :grass_1', ' :grass_1', ' :grass_1'},
		{' :grass_1', ' :grass_1', ' :grass_1'},
		{' :grass_1', ' :grass_1', ' :grass_1'},
 =====
	output = ' :dirt',
	recipe = {
		{' :junglegrass', ' :junglegrass', ' :junglegrass'},
		{' :junglegrass', ' :junglegrass', ' :junglegrass'},
		{' :junglegrass', ' :junglegrass', ' :junglegrass'},
 =====
	output = ' :dirt',
	recipe = {
		{' :dry_grass_1', ' :dry_grass_1', ' :dry_grass_1'},
		{' :dry_grass_1', ' :dry_grass_1', ' :dry_grass_1'},
		{' :dry_grass_1', ' :dry_grass_1', ' :dry_grass_1'},
 =====
	output = ' :dirt 3',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', ' :stick', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
 =====
	output = ' :dirt 6',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:wood', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
 =====
	output = ' :dirt 9',
	recipe = {
		{'group:leaves', 'group:leaves', 'group:leaves'},
		{'group:leaves', 'group:tree', 'group:leaves'},
		{'group:leaves', 'group:leaves', 'group:leaves'},
 =====
	output = 'bucket:bucket_water',
	recipe = {
		{' comp_leaves2', ' comp_leaves2', ' comp_leaves2'},
		{' comp_leaves2', 'bucket:bucket_empty', ' comp_leaves2'},
		{' comp_leaves2', ' comp_leaves2', ' comp_leaves2'},
 =====
	output = ' :water_source',
	recipe = {
		{' comp_leaves3', ' comp_leaves3', ' comp_leaves3'},
		{' comp_leaves3', ' comp_leaves3', ' comp_leaves3'},
		{' comp_leaves3', ' comp_leaves3', ' comp_leaves3'},
-----------------------------------------------------------------------------
-- SNOW and ICE melting
-----------------------------------------------------------------------------
	output = "river_water_source",
	recipe = "snow",
	cooktime = 360,
 =====
	output = "river_water_source",
	recipe = "snowblock",
	cooktime = 360,
 =====
	output = "river_water_source",
	recipe = "ice",
	cooktime = 360,

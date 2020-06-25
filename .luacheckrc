unused_args = false

globals = {
	"pandorabox",
	"travelnet",
	"sethome",
	"jumpdrive",
	"minetest",
	"unified_inventory",
	"telemosaic",
	"gravity_manager",
	"spacecannon",
	"bonemeal",
	"mobs",
	"unpack",
	"protector"
}

read_globals = {
	-- Stdlib
	string = {fields = {"split"}},
	table = {fields = {"copy", "getn"}},

	-- mod deps
	"technic_cnc", "technic",
	"loot", "mesecon", "skybox",
	"xp_redo",

	-- Minetest
	"minetest",
	"vector", "ItemStack",
	"dump", "screwdriver",

	-- Deps
	"default", "advtrains",
	"letters", "player_monoids",
	"pipeworks", "planetoidgen",
	"farming",
	"xban"
}

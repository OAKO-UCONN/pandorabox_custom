
-- common

local can_set_home = function(name, pos)
	-- check travel limit
	local can_teleport, errmsg = pandorabox.can_teleport(minetest.get_player_by_name(name), pos)
	if not minetest.is_protected(pos, name) and can_teleport then
		return true
	else
		if errmsg then
			minetest.chat_send_player(name, errmsg)
		end
		return false
	end
end


-- default sethome

local old_set = sethome.set

sethome.set = function(name, pos)
	if can_set_home(name, pos) then
		return old_set(name, pos)
	else
		return false
	end
end

-- unified inv sethome

if minetest.get_modpath("unified_inventory") then
	local old_ui_sethome = unified_inventory.set_home

	unified_inventory.set_home = function(player, pos)
		if can_set_home(player:get_player_name(), pos) then
			old_ui_sethome(player, pos)
		end
	end
end

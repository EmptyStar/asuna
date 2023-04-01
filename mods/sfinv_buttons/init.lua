-- Boilerplate to support localized strings if intllib mod is installed.
local S
if minetest.get_modpath("intllib") then
	S = intllib.Getter()
else
	S = function(s) return s end
end

local buttons = {}
local button_names_sorted = {}
local buttons_num = 0

local button_prefix = "sfinv_button_"

-- Stores selected index in textlist
local player_indexes = {}
local player_selections = {}

sfinv_buttons = {}

sfinv_buttons.register_button = function(name, def)
	buttons[name] = def
	table.insert(button_names_sorted, name)
	buttons_num = buttons_num + 1
end

-- Turns a textlist index to a button name
local index_to_button_name = function(index, player)
	local internal_index = 1
	for i=1, #button_names_sorted do
		local name = button_names_sorted[i]
		local def = buttons[name]
		if internal_index == index then
			if def.show == nil or def.show(player) == true then
				return name
			end
		end
		internal_index = internal_index + 1
	end
	return nil
end

local MAX_ROWS = 9
local MAX_COLS = 2
local MAX_BUTTONS = MAX_ROWS * MAX_COLS

sfinv.register_page("sfinv_buttons:buttons", {
	title = S("More"),
	is_in_nav = function(self, player, context)
		-- Tab is shown only if at least 1 button is visible to player
		for _, def in pairs(buttons) do
			if def.show == nil or def.show(player) == true then
				return true
			end
		end
		return false
	end,
	get = function(self, player, context)
		local f = ""
		local y = 0
		local x = 0
		local w
		if buttons_num > MAX_ROWS then
			w = 3
		else
			w = 7
		end
		if buttons_num > MAX_BUTTONS then
			f = f .. "textlist[0,0;7.8,8;sfinv_buttons_textlist;"
		end
		local buttons_added = 0
		for i=1, #button_names_sorted do
			local name = button_names_sorted[i]
			local def = buttons[name]
			if def.show == nil or def.show(player) == true then
				if buttons_num > MAX_BUTTONS then
					if buttons_added >= 1 then
						f = f .. ","
					end
					f = f .. minetest.formspec_escape(def.title)
				else
					if def.image ~= nil then
						f = f .. "image["..(x+0.1)..","..(y+0.1)..";0.8,0.8;"..def.image.."]"
					end
					local button_id = minetest.formspec_escape(button_prefix .. name)
					f = f .. "button["..
						(x+1)..","..y..";"..w..",1;"..
						button_id..";"..
						minetest.formspec_escape(def.title)..
						"]"
					if def.tooltip ~= nil then
						f = f .. "tooltip["..button_id..";"..
							minetest.formspec_escape(def.tooltip).."]"
					end
					y = y + 1
					if y >= MAX_ROWS then
						y = 0
						x = x + 4
					end
				end
				buttons_added = buttons_added + 1
			end
		end
		if buttons_num > MAX_BUTTONS then
			local index = player_indexes[player:get_player_name()]
			if index ~= nil then
				f = f .. ";" .. index
			end
			f = f .. "]"
			f = f .. "button[0,8;8,1;sfinv_buttons_action;"..minetest.formspec_escape(S("Go")).."]"
		end
		return sfinv.make_formspec(player, context, f)
	end,
	on_player_receive_fields = function(self, player, context, fields)
		local player_name = player:get_player_name()
		-- TODO: Test support case when some buttons are hidden for player
		if fields.sfinv_buttons_action then
			local button = buttons[player_selections[player_name]]
			if button ~= nil and button.action ~= nil then
				button.action(player)
			end
		elseif fields.sfinv_buttons_textlist then
			local explode = minetest.explode_textlist_event(fields.sfinv_buttons_textlist)
			if explode.type == "CHG" then
				player_indexes[player_name] = explode.index
				player_selections[player_name] = index_to_button_name(explode.index, player)
			elseif explode.type == "DCL" then
				local button = buttons[button_names_sorted[explode.index]]
				if button ~= nil and button.action ~= nil then
					button.action(player)
				end
			end
		else
			for widget_name, _ in pairs(fields) do
				local id = string.sub(widget_name, string.len(button_prefix) + 1, -1)
				if buttons[id] ~= nil and buttons[id].action ~= nil then
					buttons[id].action(player)
				end
			end
		end
	end,
})

minetest.register_on_joinplayer(function(player)
	player_indexes[player:get_player_name()] = nil
	player_selections[player:get_player_name()] = nil
end)

minetest.register_on_leaveplayer(function(player)
	player_indexes[player:get_player_name()] = nil
	player_selections[player:get_player_name()] = nil
end)

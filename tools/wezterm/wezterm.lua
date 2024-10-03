local wezterm = require("wezterm")
local act = wezterm.action

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "rakis-dark"
	else
		return "rakis-light"
	end
end

local config = wezterm.config_builder()

-- settings
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
-- config.color_scheme = "s3r0 modified (terminal.sexy)"
-- config.color_scheme = "Gruvbox (Gogh)"
-- config.color_scheme = "Hacktober"
-- config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Fahrenheit"
config.font = wezterm.font("BerkeleyMono Nerd Font Mono")
config.font_size = 15
config.scrollback_lines = 3000
config.leader = { key = ";", mods = "CTRL" }

-- Dim inactive panes
config.inactive_pane_hsb = {
	saturation = 0.24,
	brightness = 0.5,
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{ key = "[", mods = "LEADER", action = act.ActivateCopyMode },
}

-- rakis color schemes
config.color_schemes = {
	["rakis-dark"] = {
		foreground = "#ae8069",
		background = "#0c0908",

		cursor_bg = "#ae8069",
		cursor_fg = "#0c0908",
		cursor_border = "#ae8069",

		selection_fg = "#ae8069",
		selection_bg = "#38231e",

		scrollbar_thumb = "#0c0908",
		split = "#0c0908",

		ansi = { "#0c0908", "#e83c30", "#5d895b", "#f2a50c", "#3386c1", "#694e91", "#3d888e", "#ae8069" },
		brights = { "#38231e", "#fc9891", "#a2c3a1", "#fbdb9c", "#8cbbdd", "#ad97cd", "#8fc8d0", "#ae8069" },
		indexed = { [16] = "#d66000", [17] = "#e83c30" },
	},
	["rakis-light"] = {
		foreground = "#ae8069",
		background = "#f1ebba",

		cursor_bg = "#ae8069",
		cursor_fg = "#f1ebba",
		cursor_border = "#ae8069",

		selection_fg = "#ae8069",
		selection_bg = "#f5e6b2",

		scrollbar_thumb = "#f1ebba",
		split = "#f1ebba",

		ansi = { "#f1ebba", "#5f1610", "#304530", "#6c4c03", "#184c71", "#3c2e50", "#224e52", "#ae8069" },
		brights = { "#f5e6b2", "#e83c30", "#5d895b", "#f2a50c", "#3386c1", "#694e91", "#3d888e", "#ae8069" },
		indexed = { [16] = "#723502", [17] = "#5f1610" },
	},
}

-- config.window_frame = {
-- 	font = wezterm.font({ family = "Noto Sans", weight = "Regular" }),
-- }

-- -- keys
-- config.keys = {
-- 	-- send C-b when C-b is pressed twice
-- 	{ key = ";", mods = "LEADER", action = act.SendKey({ key = "b", mods = "CTRL" }) },
-- 	{ key = "[", mods = "LEADER", action = act.ActivateCopyMode },
--
-- 	-- Pane keybindings
-- 	{ key = "s", mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
-- 	{ key = "v", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
-- 	{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
-- 	{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
-- 	{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
-- 	{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
-- 	{ key = "q", mods = "LEADER", action = act.CloseCurrentPane({ confirm = true }) },
--
-- 	-- Tab keybindings
-- 	{ key = "t", mods = "LEADER", action = act.SpawnTab("CurrentPaneDomain") },
-- 	{ key = "n", mods = "LEADER", action = act.ShowTabNavigator },
-- 	{
-- 		key = "e",
-- 		mods = "LEADER",
-- 		action = act.PromptInputLine({
-- 			description = wezterm.format({
-- 				{ Attribute = { Intensity = "Bold" } },
-- 				{ Foreground = { AnsiColor = "Fuchsia" } },
-- 				{ Text = "Renaming Tab Title...:" },
-- 			}),
-- 			action = wezterm.action_callback(function(window, pane, line)
-- 				if line then
-- 					window:active_tab():set_title(line)
-- 				end
-- 			end),
-- 		}),
-- 	},
--
-- 	-- Workspace keybindings
-- 	{ key = "w", mods = "LEADER", action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }) },
-- }

return config

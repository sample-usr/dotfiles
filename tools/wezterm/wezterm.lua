local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

-- settings
config.hide_tab_bar_if_only_one_tab = true
-- config.color_scheme = "s3r0 modified (terminal.sexy)"
-- config.color_scheme = "Gruvbox (Gogh)"
config.color_scheme = "Hacktober"
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

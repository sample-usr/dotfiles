local status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
if not status then
	print("Colorscheme not found!")
	return
end

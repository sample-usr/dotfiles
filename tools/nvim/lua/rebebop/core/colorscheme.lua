local status, _ = pcall(vim.cmd, "colorscheme srcery")
if not status then
	print("Colorscheme not found!")
	return
end

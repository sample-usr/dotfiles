local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"lua_ls",
		"ansiblels",
		"bashls",
		"dockerls",
		"eslint",
		"jsonls",
		"marksman",
		"solargraph",
		"terraformls",
		"yamlls",
		"omnisharp",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	ensure_installed = nil,
	automatic_setup = false,
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})

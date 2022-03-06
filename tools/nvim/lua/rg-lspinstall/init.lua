-- https://github.com/kabouzeid/dotfiles/blob/40495c7e47e6864ecc87ea44d585a5087cb0173c/nvim/lua/lsp-settings.lua#L146-L210 (for additional language specific config)
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- automatically setup servers again after `:LspInstall <server>`
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- makes sure the new server is setup in lspconfig
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end


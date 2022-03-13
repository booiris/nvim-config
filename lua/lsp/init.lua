-- nvim-lspconfig config
-- List of all pre-configured LSP servers:
-- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {'lua', 'python','c++','rust','go'}
for _, lsp in pairs(servers) do
    local temp = "lsp." ..  lsp
    require(temp)
end

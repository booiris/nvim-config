local M = {}
function M.config()

    -- Setup nvim-cmp.
    local cmp = require 'cmp'
    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                -- luasnip
                require('luasnip').lsp_expand(args.body)
                -- vsnip
                -- vim.fn["vsnip#anonymous"](args.body)
                -- snippy
                -- require('snippy').expand_snippet(args.body)
                -- ultisnip
                -- vim.fn["UltiSnips#Anon"](args.body)
            end
        },
        mapping = {
            ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
            ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
            ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
            ['<C-y>'] = cmp.config.disable,
            ['<C-e>'] = cmp.mapping({
                i = cmp.mapping.abort(),
                c = cmp.mapping.close()
            }),
            -- Accept currently selected item...
            -- Set `select` to `false` to only confirm explicitly selected items:
            ['<CR>'] = cmp.mapping.confirm({select = true})
        },
        sources = cmp.config.sources({
            {name = 'cmp_tabnine'}, {name = 'nvim_lsp'}
        }, -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
        {{name = 'buffer'}})
    })

    -- You can also set special config for specific filetypes:
    --    cmp.setup.filetype('gitcommit', {
    --        sources = cmp.config.sources({
    --            { name = 'cmp_git' },
    --        }, {
    --            { name = 'buffer' },
    --        })
    --    })

    -- nvim-cmp for commands
    cmp.setup.cmdline('/', {sources = {{name = 'buffer'}}})
    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})
    })

    -- nvim-lspconfig config
    -- List of all pre-configured LSP servers:
    -- github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                         .protocol
                                                                         .make_client_capabilities())
    local servers = {'clangd', 'rust_analyzer', 'pyright'}
    for _, lsp in pairs(servers) do
        require('lspconfig')[lsp].setup {capabilities = capabilities}
    end

    local devicons = require('nvim-web-devicons')
    cmp.register_source('devicons', {
        complete = function(self, params, callback)
            local items = {}
            for _, icon in pairs(devicons.get_icons()) do
                table.insert(items, {
                    label = icon.icon .. '  ' .. icon.name,
                    insertText = icon.icon,
                    filterText = icon.name
                })
            end
            callback({items = items})
        end
    })

    -- format
    local lspkind = require('lspkind')
    local source_mapping = {
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
        cmp_tabnine = "[TN]",
        path = "[Path]"
    }
    cmp.setup {
        formatting = {
            format = function(entry, vim_item)
                vim_item.kind = lspkind.presets.default[vim_item.kind]
                local menu = source_mapping[entry.source.name]
                if entry.source.name == 'cmp_tabnine' then
                    if entry.completion_item.data ~= nil and
                        entry.completion_item.data.detail ~= nil then
                        menu = entry.completion_item.data.detail .. ' ' .. menu
                    end
                    vim_item.kind = ''
                end
                vim_item.menu = menu
                return vim_item
            end
        }
    }

end

return M


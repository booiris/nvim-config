local M = {}
function M.config()
    vim.opt.list = true
    vim.opt.termguicolors = true
    vim.opt.listchars:append("space:⋅")
    --vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
    --vim.cmd [[highlight IndentBlanklineContextStart guisp=#E06C75 gui=underline]]
    --vim.cmd [[highlight IndentBlanklineContextChar guisp=#E06C75 gui=nocombine]]

    --vim.opt.listchars:append("eol:↴")
    vim.g.indent_blankline_buftype_exclude = {
		"nofile",
		"terminal",
		"lsp-installer",
		"lspinfo",
	}
    vim.g.indent_blankline_filetype_exclude = {
		"help",
		"startify",
		"dashboard",
		"packer",
		"neogitstatus",
		"NvimTree",
		"neo-tree",
		"Trouble",
	}
    require'indent_blankline'.setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        --char_highlight_list = {
        --    "IndentBlanklineContextStart",
        --},
    }

end

return M

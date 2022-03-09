if not vim.g.vscode then
	require("core")
    vim.cmd("set undofile")
    vim.cmd("set undolevels=3000")
    vim.cmd("set undodir=~/.cache/nim/undo//")
    vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
end
if not vim.g.vscode then
    vim.cmd("set mouse=a")
    vim.cmd("let g:copilot_filetypes = {\'cpp\': v:false,}")
    vim.cmd("autocmd TextYankPost * if v:event.operator is \'y\' && v:event.regname is \'\' | OSCYankReg \" | endif")
    vim.cmd("set clipboard& clipboard^=unnamed,unnamedplus")
    vim.cmd("set undofile")
    vim.cmd("set undolevels=3000")
    vim.cmd("set undodir=~/.cache/nvim/undo//")
    require("core")
    vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
    vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")
    vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")

end

-- packer.nvim
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- highlight
    use 'itchyny/vim-cursorword'

    -- scroll
    use 'karb94/neoscroll.nvim'

    -- starup time optimise
    use 'dstein64/vim-startuptime'
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    -- buffer
    use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
    use 'moll/vim-bbye' -- for more sensible delete buffer cmd

    -- themes (disabled other themes to optimize startup time)
    use 'sainnhe/sonokai'
    --    use 'joshdick/onedark.vim'
    --    use { 'catppuccin/nvim', as='catppuccin' }
    --    use { 'sonph/onehalf', rtp='vim/' }
    --    use 'liuchengxu/space-vim-dark'
    --    use 'ahmedabdulrahman/aylin.vim'

    -- file tree
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

    -- language
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'
    use 'onsails/lspkind-nvim'
    use 'github/copilot.vim'
    use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
    use 'windwp/nvim-autopairs'
    -- git
    use 'airblade/vim-gitgutter' -- TODO: better git integration

    -- status line
    use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }

    -- tagbar
    use 'simrat39/symbols-outline.nvim'

    -- floating terminal
    use 'voldikss/vim-floaterm'

    -- file telescope
    use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- startup screen
    --    use '~/Developer/aleph-nvim'
    use 'p-z-l/aleph-nvim'

    -- center
    use 'smithbm2316/centerpad.nvim'

    -- vim-blank line
    use 'lukas-reineke/indent-blankline.nvim'

    -- code runner
    use 'CRAG666/code_runner.nvim'

    -- show code error tourble
    -- use {
    --    "folke/trouble.nvim",
    --    requires = "kyazdani42/nvim-web-devicons",
    --    config = function()
    --    require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    --   }
    -- clipboard
    use 'ojroques/vim-oscyank'

    -- show hot key
    use 'folke/which-key.nvim'

end
)

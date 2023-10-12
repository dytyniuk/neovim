return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    -- {
    --     'projekt0n/github-nvim-theme',
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme('github_dark_tritanopia')
    --     end
    -- },
    { 'tpope/vim-fugitive' },
    { 'lewis6991/gitsigns.nvim' },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- lsp-zero
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    },
    {
        'luisiacc/the-matrix.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('thematrix')
            vim.g.thematrix_telescope_mode = 1
        end
    },
}

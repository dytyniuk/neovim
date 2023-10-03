return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        'projekt0n/github-nvim-theme',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme('github_dark_dimmed')
        end
    },
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

    {'akinsho/toggleterm.nvim', version = "*", config = true}
}

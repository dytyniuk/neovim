local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local lang_servers = {
    'dockerls',
    'docker_compose_language_service',
    'eslint',
    'jsonls',
    'intelephense',
    'lua_ls',
    'pyright',
    'sqlls',
    'taplo',
    'yamlls',
    'tsserver'
}

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = lang_servers,
  handlers = {
    lsp_zero.default_setup,
  },
})

lsp_zero.setup_servers(lang_servers)

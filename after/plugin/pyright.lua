local lspconfig = require('lspconfig')
local path = lspconfig.util.path

local function get_python_path(workspace)
    -- Find and use virtualenv from pipenv in workspace directory
    local pipfile = vim.fn.glob(path.join(workspace, 'Pipfile'))
    if pipfile ~= '' then
        local venv = vim.fn.trim(vim.fn.system('PIPENV_PIPFILE=' .. pipfile .. ' pipenv --venv'))
        return path.join(venv, 'bin', 'python')
    end

    -- Fallback to system python
    return vim.fn.exepath('python3') or vim.fn.exepath('python') or 'python'
end

lspconfig.pyright.setup({
    on_init = function (client)
        client.config.settings.python.pythonPath = get_python_path(client.config.root_dir)
    end
})

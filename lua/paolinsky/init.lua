require("paolinsky.remap")
require("paolinsky.set")

require("transparent").setup({
    extra_groups = {
        "NormalFloat",   -- plugins which have float panel such as Lazy, Mason, LspInfo
        "NvimTreeNormal" -- NvimTree
    },
})
-- require("autoclose").setup()

vim.g.rustaceanvim = {
    -- Plugin configuration
    tools = {
    },
    -- LSP configuration
    server = {
        on_attach = function(client, bufnr)
            vim.keymap.set(
                "n",
                "<leader>a",
                function()
                    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
                    -- or vim.lsp.buf.codeAction() if you don't want grouping.
                end,
                { silent = true, buffer = bufnr }
            )
            -- you can also put keymaps in here
        end,
        default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
            },
        },
    },
    -- DAP configuration
    dap = {
    },
}

require("hover").setup({
    init = function()
        -- Require providers
        require("hover.providers.lsp")
    end,
    preview_opts = {
        border = 'single'
    },
    -- Whether the contents of a currently open hover window should be moved
    -- to a :h preview-window when pressing the hover keymap.
    preview_window = false,
    title = true,
    mouse_providers = {
        'LSP'
    },
    mouse_delay = 1000
})


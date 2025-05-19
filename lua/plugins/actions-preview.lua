return {
    "aznhe21/actions-preview.nvim",
    config = function()
        vim.keymap.set({ "n" }, "<leader>ca", require("actions-preview").code_actions)
    end,
}

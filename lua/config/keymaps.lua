-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Do not be silly :)
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })
vim.keymap.set({ "n", "i", "v" }, "<Left>", '<cmd>echo "No left for you silly"<CR>')
vim.keymap.set({ "n", "i", "v" }, "<Right>", '<cmd>echo "No right for you silly"<CR>')
vim.keymap.set({ "n", "i", "v" }, "<Up>", '<cmd>echo "No up for you silly"<CR>')
vim.keymap.set({ "n", "i", "v" }, "<Down>", '<cmd>echo "No down for you silly"<CR>')

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move selection up

vim.keymap.set("n", "J", "mzJ`z")            -- Remove end of line
vim.keymap.set("n", "<C-d>", "<C-d>zz")      -- Go down
vim.keymap.set("n", "<C-u>", "<C-u>zz")      -- Go up
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)
--
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]er]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/paolinsky/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Resize windows
vim.keymap.set("n", "<leader>h", "<C-w><");
vim.keymap.set("n", "<leader>j", "<C-w>-");
vim.keymap.set("n", "<leader>k", "<C-w>+");
vim.keymap.set("n", "<leader>l", "<C-w>>");

-- Fold code
vim.keymap.set("n", "<C-f>", "za");

-- GitGutter
vim.keymap.set("n", "<leader>cg", "<cmd>GitGutterPreviewHunk<CR>")
vim.keymap.set("n", "<leader>cn", "<cmd>GitGutterNextHunk<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>GitGutterPrevHunk<CR>")

vim.keymap.set("n", "<leader>rn", ":IncRename ")

vim.keymap.set("n", "<leader>rn", ":IncRename ")

vim.keymap.set("n", "<leader>cd", function()
    vim.diagnostic.open_float(nil, { focus = false })
end)

vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)

-- Nvim Tree
vim.keymap.set({ "n", "i" }, "<C-b>", "<cmd>:NvimTreeToggle<CR>")

-- IncRename
vim.keymap.set({"n", "i"}, "<F2>", ":IncRename ")

-- Setup hover keymaps
vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
vim.keymap.set("n", "<C-[>", function() require("hover").hover_switch("previous") end,
    { desc = "hover.nvim (previous source)" })
vim.keymap.set("n", "<C-]>", function() require("hover").hover_switch("next") end, { desc = "hover.nvim (next source)" })

-- Mouse support
vim.keymap.set('n', '<MouseMove>', require('hover').hover_mouse, { desc = "hover.nvim (mouse)" })
vim.o.mousemoveevent = true

-- go to def
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})

-- Go to prev buffer
vim.keymap.set("n", "gp", ":b#<CR>", {})

vim.keymap.set('n', '<space>ca', function()
    vim.lsp.buf.code_action({apply=true}) end, {})

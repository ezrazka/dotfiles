-- =========================
-- CUSTOM KEYMAPS
-- =========================

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("n", "<leader>c", "\"_c")

vim.keymap.set("n", "gl", vim.diagnostic.open_float)

vim.keymap.set("n", "<Esc>", function()
    if vim.v.hlsearch == 1 then
        vim.cmd("nohlsearch")
        vim.notify("Highlights cleared")
    end
end)
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l")

-- =========================
-- REMAPS
-- =========================

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<C-d>", "<C-d>zzzv")
vim.keymap.set("n", "<C-u>", "<C-u>zzzv")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "J", "mzJ`z")

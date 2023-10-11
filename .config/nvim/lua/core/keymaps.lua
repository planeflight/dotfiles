vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

-- harpoon
-- harpoon mark
keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<cr>")
-- harpoon find file
keymap.set("n", "<leader>hf", ":lua require('harpoon.ui').toggle_quick_menu()<cr>")

keymap.set("n", "<leader>fm", ":lua require('harpoon.ui').toggle_quick_menu()<cr>")

-- navigation
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-l>", "<Right>")

-- oil.nvim
keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })

-- Nvim Tree
keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })



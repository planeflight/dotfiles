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

-- navigation
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-l>", "<Right>")

-- oil.nvim
keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })

-- Nvim Tree
keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")

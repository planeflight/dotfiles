vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- nvim-tree
keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")

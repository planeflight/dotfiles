vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<cr>")
keymap.set("n", "<leader>fw", ":Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<cr>")
-- find git files
keymap.set("n", "<leader>fg", ":Telescope git_files<cr>")

-- harpoon
-- harpoon mark
keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<cr>")
-- harpoon find file
keymap.set("n", "<leader>hf", ":lua require('harpoon.ui').toggle_quick_menu()<cr>")

keymap.set("n", "<leader>fm", ":lua require('harpoon.ui').toggle_quick_menu()<cr>")
-- navigate
keymap.set("n", "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<cr>")
keymap.set("n", "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<cr>")
keymap.set("n", "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<cr>")
keymap.set("n", "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<cr>")

-- navigation
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-l>", "<Right>")

-- Nvim Tree
keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")

-- Oil
keymap.set("n", "-", ":Oil<cr>", { desc = "Open parent directory" })

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- fugitive
keymap.set("n", "<leader>gs", vim.cmd.Git)

-- move blocks of text up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

keymap.set("n", "<leader>d", '"_d')
keymap.set("v", "<leader>d", '"_d')

keymap.set("n", "Q", "<nop>")

keymap.set({ "n", "v" }, "<leader>mp", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  })
end, { desc = "Format file or range (in visual mode)" })
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<cr>", { desc = "Add breakpoint at line" })
keymap.set("n", "<leader>dr", ":DapContinue<cr>", { desc = "Start or continue the debugger" })

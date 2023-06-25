require("toggleterm").setup {
    open_mapping = [[C-t]],
    shade_terminals = false,
    size = 20,
    start_in_insert = true,
    close_on_exit = true,
    shell = vim.o.shell
}

vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>")

function _G.set_terminal_keymaps()
    local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

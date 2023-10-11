local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(require("plugins.init"))

require("plugins.configs")
require("plugins.configs.nvim-treesitter")

require("plugins.configs.lsp")
require("plugins.configs.neodev")
require("plugins.configs.nvim-cmp")
require("plugins.configs.mason")


require("core.options")
require("core.keymaps")
require("core.colorscheme")

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

require("lazy").setup(require("planeflight.plugins.init"))

require("planeflight.plugins.configs.nvim-treesitter")
require("planeflight.plugins.configs.lsp")
require("planeflight.plugins.configs.ibl")
require("planeflight.plugins.configs.gitsigns")
require("planeflight.plugins.configs.conform")

require("planeflight.core.options")
require("planeflight.core.keymaps")
require("planeflight.core.colorscheme")

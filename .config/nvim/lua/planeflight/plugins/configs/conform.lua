require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { "prettier" },
    typescript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    cpp = { "clang-format" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 1000,
  },
})

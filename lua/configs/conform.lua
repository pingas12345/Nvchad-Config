local options = {
  formatters_by_ft = {
    -- lua        = { "stylua" },
    python     = { "ruff_format", "black" }, -- ruff first, black as fallback
    c          = { "clang-format" },
    cpp        = { "clang-format" },
    javascript = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    json       = { "prettierd", "prettier" },
    yaml       = { "prettierd", "prettier" },
    -- markdown   = { "prettierd", "prettier" },
    sh         = { "shfmt" },
    bash       = { "shfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

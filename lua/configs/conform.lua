local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    -- lua        = { "stylua" },
    python     = { "ruff_fix", "ruff_format", "ruff_organize_imports" }, 
    c          = { "clang-format" },
    cpp        = { "clang-format" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    json       = { "prettierd" },
    yaml       = { "prettierd" },
    -- markdown   = { "prettierd" },
    sh         = { "shfmt" },
    bash       = { "shfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

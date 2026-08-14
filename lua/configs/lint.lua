local lint = require("lint")

lint.linters_by_ft = {
  python     = { "ruff" },
  c          = { "cpplint" },
  cpp        = { "cpplint" },
  bash       = { "shellcheck" },
  sh         = { "shellcheck" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  -- lua        = { "luacheck" },
  -- markdown   = { "markdownlint" },
  yaml       = { "yamllint" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  group = vim.api.nvim_create_augroup("lint", { clear = true }),
  callback = function()
    lint.try_lint()
  end,
})

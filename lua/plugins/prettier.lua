return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
    },
    formatters = {
      prettier = {
        prepend_args = function()
          local has_local_config = vim.fn.glob(".prettierrc*", 0, 1)[1] ~= nil
            or vim.fn.glob("prettier.config.*", 0, 1)[1] ~= nil
            or vim.fn.glob("package.json", 0, 1)[1] ~= nil

          if has_local_config then
            return {}
          else
            return {
              "--semi",
              "--single-quote",
              "--bracket-spacing",
              "--trailing-comma",
              "es5",
              "--quote-props",
              "consistent",
              "--arrow-parens",
              "always",
              "--print-width",
              "120",
              "--tab-width",
              "2",
              "--end-of-line",
              "lf",
            }
          end
        end,
      },
    },
  },
}

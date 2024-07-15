return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      local utils = require("utils")

      opts.formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
      }
      opts.formatters.ruff_fix = {
        condition = utils.enable_python_tools,
      }
      opts.formatters.ruff_format = {
        condition = utils.enable_python_tools,
      }

      return opts
    end,
  },
}

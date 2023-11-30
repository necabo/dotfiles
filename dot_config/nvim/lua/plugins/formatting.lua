return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      local utils = require("utils")

      opts.formatters_by_ft = {
        python = { "ruff_fix", "black" },
      }
      opts.formatters.ruff_fix = {
        condition = utils.enable_python_tools,
      }
      opts.formatters.black = {
        prepend_args = { "--preview" },
        condition = utils.enable_python_tools,
      }

      return opts
    end,
  },
}

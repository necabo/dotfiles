return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      local utils = require("utils")

      opts.formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "autopep8" },
      }
      opts.formatters.ruff_fix = {
        condition = utils.enable_python_tools,
      }
      opts.formatters.ruff_format = {
        condition = utils.enable_python_tools,
      }
      opts.formatters.autopep8 = {
        condition = utils.is_within_work_dir,
      }

      return opts
    end,
  },
}

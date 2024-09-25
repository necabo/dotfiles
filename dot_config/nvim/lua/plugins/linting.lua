return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      local utils = require("utils")

      opts.linters_by_ft = {
        python = { "ruff", "pylint" },
      }
      opts.linters.ruff = {
        condition = utils.enable_python_tools,
      }
      opts.linters.pylint = {
        condition = utils.is_within_work_dir,
      }

      return opts
    end,
  },
}

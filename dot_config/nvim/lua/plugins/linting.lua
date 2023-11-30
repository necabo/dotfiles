return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      local utils = require("utils")

      opts.linters_by_ft = {
        python = { "ruff" },
      }
      opts.linters.ruff = {
        condition = utils.enable_python_tools,
      }

      return opts
    end,
  },
}

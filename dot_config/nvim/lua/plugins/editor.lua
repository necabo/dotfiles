local Util = require("lazyvim.util")

return {
  { "echasnovski/mini.bufremove", enabled = false },
  { "folke/flash.nvim",           enabled = false },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "flex",
        layout_config = {
          flex = {
            flip_columns = 150,
          },
        },
        preview = {
          timeout = 250,
        },
      },
    },
    keys = {
      { "<leader>fa", Util.telescope("find_files"), desc = "Find all Files" },
    },
  },
}

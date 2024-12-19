return {
  {
    "SmiteshP/nvim-navic",
    opts = function(_, opts)
      opts.separator = "  "
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local icons = require("lazyvim.config").icons
      local filename = { "filename", path = 1 } -- relative path
      local filetype = { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } }

      return {
        options = {
          theme = "auto",
          globalstatus = true,
          section_separators = "",
          component_separators = "",
          disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
        },
        sections = {
          lualine_b = { "branch" },
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },
          lualine_x = {
            {
              function()
                return require("noice").api.status.mode.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.mode.has()
              end,
              color = { fg = Snacks.util.color("Constant") },
            },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
            },
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates,
              color = { fg = Snacks.util.color("Special") },
            },
          },
          lualine_y = {
            { "progress", separator = " ", padding = { left = 1, right = 0 } },
            { "location", padding = { left = 0, right = 1 } },
          },
          lualine_z = { "filetype" },
        },
        winbar = {
          lualine_c = {
            filetype,
            filename,
            {
              function()
                return require("nvim-navic").get_location()
              end,
              cond = function()
                return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
              end,
            },
          },
        },
        inactive_winbar = {
          lualine_c = {
            filetype,
            filename,
          },
        },
        extensions = { "quickfix", "man", "neo-tree" },
      }
    end,
  },
  "folke/twilight.nvim",
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}

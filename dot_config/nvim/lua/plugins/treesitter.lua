return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, {
      "rust",
      "dart",
      "fish",
    })
    opts.matchup = {
      enable = true,
    }
    opts.indent = {
      disable = { "dart" },
    }
  end,
}

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "terraform", "hcl" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        terraformls = {},
      },
    },
  },
}

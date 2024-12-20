return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "rust" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              check = {
                command = "clippy",
              },
            },
          },
        },
      },
    },
  },
}

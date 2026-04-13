return {
  -- disable LSP installer, make sure to have LSPs installed using package manager
  {
    "mason-org/mason.nvim",
    enabled = false,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ['*'] = {
          keys = {
            { "gK", false },
            { "<c-k>", false, mode = "i" },
            { "gH", vim.lsp.buf.signature_help, desc = "Signature Help", has = "signatureHelp" },
            { "<c-h>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" },
            { "K", false },
            { "gh", vim.lsp.buf.hover, desc = "Hover" },
          }
        }
      }
    }
  },
}

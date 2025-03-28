return {
  -- disable LSP installer, make sure to have LSPs installed using package manager
  {
    "williamboman/mason.nvim",
    enabled = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      keys[#keys + 1] = { "gK", false }
      keys[#keys + 1] = { "<c-k>", false, mode = "i" }
      keys[#keys + 1] = { "gH", vim.lsp.buf.signature_help, desc = "Signature Help", has = "signatureHelp" }
      keys[#keys + 1] =
        { "<c-h>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" }
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gh", vim.lsp.buf.hover, desc = "Hover" }
    end,
  },
}

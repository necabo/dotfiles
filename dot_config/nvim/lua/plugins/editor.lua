return {
  { "folke/flash.nvim", enabled = false },
  {
    'tigion/nvim-asciidoc-preview',
    ft = { 'asciidoc' },
    build = 'cd server && npm install',
    opts = {},
  }
}

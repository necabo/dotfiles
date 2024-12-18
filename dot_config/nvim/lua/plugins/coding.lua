return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "default",
        ['<C-s>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-j>'] = { 'snippet_forward', 'fallback' },
        ['<C-k>'] = { 'snippet_backward', 'fallback' },
        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },
      }
    }
  },
}

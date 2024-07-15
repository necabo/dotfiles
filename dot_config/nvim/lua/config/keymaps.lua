-- better copy & paste keymaps
vim.keymap.set("n", "Y", "y$", { desc = "Yank until end of line" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank into system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+y$', { desc = "Yank until end of line (system clipboard)" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste after cursor (system clipboard)" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste before cursor (system clipboard)" })

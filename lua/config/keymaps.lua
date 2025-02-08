-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Add LSP hover keymap
vim.keymap.set("n", "M", function()
  vim.lsp.buf.hover()
end, { desc = "Show hover information", noremap = true, silent = true })

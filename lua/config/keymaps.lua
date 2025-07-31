-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>e", function()
  Snacks.explorer()
end, { desc = "Terminal (cwd)" })

map("n", "<leader>o", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })

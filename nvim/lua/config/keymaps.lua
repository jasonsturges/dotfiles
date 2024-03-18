-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines
map("n", "<D-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<D-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<D-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<D-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<D-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<D-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

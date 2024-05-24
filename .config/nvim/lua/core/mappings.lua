vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- clear highlights
keymap("n", "<Esc>", ":noh <CR>", opts)

-- Save file
keymap("n", "<C-s>", ":w <CR>", opts)

-- Navigation
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-l>", "<Right>", opts)

-- Move line
keymap("n", "<leader>j", ":m .+1<CR>==", opts)
keymap("n", "<leader>k", ":m .-2<CR>==", opts)

-- Switch between windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- BufferLine
keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>x", "<cmd> BufferLinePickClose<CR>", opts)

-- NvimTree
keymap("n", "<C-n>", "<cmd> NvimTreeToggle <CR>", opts)
-- keymap("n", "<leader-e>", "<cmd> NvimTreeFindFile <CR>", opts)
keymap("n", "<C-w>", "<cmd> NvimTreeCollapseKeepBuffers <CR>", opts)

-- Terminal
keymap("n", "<A-i>", ":ToggleTerm direction=float<CR>", opts)

-- Insert mode
keymap("i", "jk", "<ESC>", opts)

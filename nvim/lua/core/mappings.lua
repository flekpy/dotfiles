vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-s>", ":w <CR>", opts) -- save file Ctrl + s

-- BufferLine
keymap('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
keymap('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)
keymap('n', '<leader>x', '<cmd> BufferLinePickClose<CR>', opts)

-- NvimTree
keymap('n', '<C-n>', '<cmd> NvimTreeToggle <CR>', opts) -- open explorer nvimTree

-- Insert mode
keymap("i", "jk", "<ESC>", opts)

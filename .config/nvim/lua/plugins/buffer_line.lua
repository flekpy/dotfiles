require("bufferline").setup({
	options = {
		mode = "buffers", -- buffers or tabs
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
			},
		},
		diagnostics = "nvim_lsp",
	},
})

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- BufferLine
keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>x", "<cmd> BufferLinePickClose<CR>", opts)

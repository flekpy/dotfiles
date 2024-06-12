local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- color themes
	{ "rebelot/kanagawa.nvim", lazy = false, name = "kanagawa" },

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			-- "nvim-telescope/telescope-file-browser.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						hijack_netrw = true,
					},
				},
			})
			require("telescope").load_extension("file_browser")
		end,
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		keys = {
			{ "<leader>'", "<cmd>Telescope file_browser<cr>", desc = "Telescope File Browser (root dir)" },
			{
				'<leader>"',
				"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
				desc = "Telescope File Browser (cwd)",
			},
		},
	},

	-- lsp
	{ "neovim/nvim-lspconfig", lazy = true },

	-- mason
	{ "williamboman/mason.nvim", lazy = true },

	-- linting
	{
		"stevearc/conform.nvim",
		lazy = true,
		opts = {},
	},

	-- cmp
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },

	-- nvim treesitter
	{ "nvim-treesitter/nvim-treesitter" },

	-- rust syntax highlighting, formatting and LSP settings
	{ "rust-lang/rust.vim" },
	{
		"mrcjkb/rustaceanvim",
		version = "^4",
		-- ft = { "rust" },
		lazy = false,
	},

	-- buffer line
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- toggle terminal
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	-- autopairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},

	-- status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}

require("lazy").setup(plugins)

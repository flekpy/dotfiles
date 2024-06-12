local builtin = require("telescope.builtin")
-- local fb_actions = require("telescope._extensions.file_browser.actions")

-- local file_browser_config = {
-- 	-- theme = "ivy", или "dropdown"
-- 	theme = "center",
-- 	-- отключает netrw и использует telescope-file-browser вместо него
-- 	hijack_netrw = true,
-- 	-- ваши кастомные клавиатурные сокращения
-- 	mappings = {
-- 		-- 	["i"] = {
-- 		-- 		-- ваши кастомные insert mode сокращения
-- 		-- 	},
-- 		["n"] = {
-- 			-- ваши кастомные normal mode сокращения
-- 			-- Пример: vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
-- 		},
-- 	},
-- }

require("telescope").setup({
	extensions = {
		-- fuzzy founder
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})

require("telescope").load_extension("fzf")
require("telescope").load_extension("file_browser")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")
-- vim.keymap.set("n", "<space>fb", function()
-- 	require("telescope").extensions.file_browser.file_open()
-- end)

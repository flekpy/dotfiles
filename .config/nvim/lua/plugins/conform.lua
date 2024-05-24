require("conform").setup({
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    async = false,
  },
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    json = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
    graphql = { "prettierd" },
  },
})

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- pattern = "*",
-- callback = function(args)
--   require("conform").format({ bufnr = args.buf })
-- end,
-- })

-- vim.keymap.set("n", "BufWritePre", {
-- 	pattern = "*",
-- 	callback = function(args)
-- 		require("conform").format({ bufnr = args.buf })
-- 	end,
-- })

-- vim.keymap.set({ "n" }, "BufWritePre", function()
-- 	require("conform").format({
-- 		lsp_fallback = true,
-- 		async = false,
-- 		timeout_ms = 500,
-- 	})
-- end, { desc = "Format file or range (in visual mode)" })

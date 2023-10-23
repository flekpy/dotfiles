local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

null_ls.setup {
  debug = true,
  sources = {
    -- formatting.stylua,
    -- formatting.prettier.with({
    --   extra_filetypes = { "solidity"}
    -- }),
    formatting.prettierd.with({
      extra_filetypes = { "solidity" }
    }),

    lint.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    lint.fish,
    lint.shellcheck,
    -- lint.ansible-lint
  },

  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          lsp_formatting(bufnr)
        end,
      })
    end
  end,
}

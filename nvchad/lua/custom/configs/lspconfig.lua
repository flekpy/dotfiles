local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "eslint", "ansiblels", "pyright", "solidity" }

for _, lsp in ipairs(servers) do
  if lsp == "solidity" then
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
      filetypes = { 'solidity' },
      root_dir = lspconfig.util.find_git_ancestor,
      single_file_support = true,
    }
  else
    lspconfig[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
end

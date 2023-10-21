local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

        -- "python"
        "python",

        -- golang
        "go",

        -- bash
        "bash"
      },
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

  {
    "neovim/nvim-lspconfig",

     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },

     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },

 {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "css-lsp",
        "eslint_d",
        "json-lsp",
        "prettier",
        "prettierd",
        "pyright",
        "typescript-language-server",
        "tailwindcss-language-server",
        "ansible-language-server",
        "ansible-lint"
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "antosha417/nvim-lsp-file-operations" },
    -- opts = overrides.nvimtree,
    opts = {
      view = {
        side = "right"
      }
    }
  },

  -- {"iamcco/markdown-preview.nvim"}
  -- { "pearofducks/ansible-vim" }
}

return plugins

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set('n', '<CR>', api.tree.open.tab, opts('Open: New Tab'))
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 37,
    side = "right",
    cursorline = false,
    signcolumn = 'no'
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  -- on_attach = my_on_attach,
})

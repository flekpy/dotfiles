local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set('n', '<CR>', api.tree.open.tab, opts('Open: New Tab'))
end

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 45,
    -- side = "right",
    side = "left",
    cursorline = false,
    signcolumn = 'no'
  },
  disable_netrw = true,
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  actions = {
    open_file = {
      resize_window = true,
    }
  }
  -- on_attach = my_on_attach,
})

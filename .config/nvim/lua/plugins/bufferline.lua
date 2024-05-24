require("bufferline").setup({
  options = {
    mode = "tabs",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
      },
    },
    diagnostics = "nvim_lsp",
  },
})

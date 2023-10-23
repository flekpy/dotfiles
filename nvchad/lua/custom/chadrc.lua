-- @type ChadrcConfig 
 local M = {}

 M.options = {
  signcolumn = 'no',
}

 M.ui = {
  theme = 'doomchad',
  transparency = true,
  hl_override = {
    Visual = { bg = "#592544"},
    Comment = { fg = "#456A8C" },
    LineNr = { bg = "NONE", fg = "light_grey"},
    IndentBlanklineChar = { fg = '#22262E' },
    IndentBlanklineContextChar = { fg = '#303440'}
    },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

 return M

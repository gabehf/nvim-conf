local M = {}

M.base_16 = {
  base00 = "#13121F", -- default bg
  base01 = "#312C5E", -- Lighter bg, line num, status bar, etc
  base02 = "#2d294a", -- selection bg
  base03 = "#826aed", -- comments, line highlight
  base04 = "#25233C", -- dark foreground (status bar)
  base05 = "#f8f8f2", -- Default foreground, caret, delimeters, ops
  base06 = "#000000", -- Light foreground
  base07 = "#aaaaaa", -- light background
  base08 = "#F066EC", -- vars, xml tag, markup links, diff delete
  base09 = "#38F0E8", -- booleans, constants, ints, search text current
  base0A = "#00FFAB", -- classes, markup bold, search text bg
  base0B = "#42F032", -- strings, inherited class, markup code, diff insert
  base0C = "#C9ECF5", -- support, regex, escape chars, markup quotes, lua {}
  base0D = "#0CECDD", -- funcs, methods, attr ids, headings, html inner text
  base0E = "#ffe405", -- keywords, markup italic, diff changed
  base0F = "#E3F6FF", -- lua comma, golang delimeter
}

M.base_30 = {
  white = "#F8F8F2", -- active line num
  darker_black = "#19192c",
  black = "#141423",
  black2 = "#1c1c31",
  one_bg = "#23233d",
  one_bg2 = "#2b2b4c",
  one_bg3 = "#373760",
  grey = M.base_16.base01, -- line numbers (STOP USING BASE30 FOR STUFF THAT BASE16 ALREADY DEFINED!!)
  grey_fg = M.base_16.base03, -- comments (NVCHAD SHOULD REALLY NOT USE THIS SHIT FOR BASIC SYNTAX HL)
  grey_fg2 = "#555594",
  light_grey = "#6060a4",
  red = "#FF5ff5", -- changed git files,
  baby_pink = "#FF6E6E",
  pink = "#FF6BCB",
  line = "#2D2D4E",
  green = "#50FA7B",
  vibrant_green = "#20E3B2",
  nord_blue = "#05C3FF",
  blue = "#2CCCFF",
  yellow = "#F1FA8C", -- README nvim-tree
  sun = "#F2FA95",
  purple = "#BD93F9",
  dark_purple = "#a166f6",
  teal = "#92A2D4",
  orange = "#FFB86C",
  cyan = "#2CCCFF",
  statusline_bg = "#19192c",
  lightbg = "#2b2b4c",
  pmenu_bg = "#9A86FD",
  folder_bg = "#9A86FD",
  violet = "#9A86FD",
  darkgreen = "#1B312E",
  brownred = "#5D2932",
}

M.type = "dark"

return M

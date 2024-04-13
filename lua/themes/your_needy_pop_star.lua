local M = {}

M.base_16 = {
  base00 = "#13121F", -- default bg
  base01 = "#2d2557", -- Lighter bg, line num, status bar, etc
  base02 = "#2d294a", -- selection bg
  base03 = "#826aed", -- comments, line highlight
  base04 = "#25233C", -- dark foreground (status bar)
  base05 = "#f8f8f2", -- Default foreground, caret, delimeters, ops
  base06 = "#fafaf7", -- Light foreground (maybe brackets, variables)
  base07 = "#1a1530", -- light background term color 15[bright white] (maybe brackets, parens)
  base08 = "#F066EC", -- vars, xml tag, markup links, diff delete
  base09 = "#38F0E8", -- booleans, constants, ints, search text current
  base0A = "#00FFAB", -- classes, markup bold, search text bg
  base0B = "#42F032", -- strings, inherited class, markup code, diff insert
  base0C = "#C9ECF5", -- support, regex, escape chars, markup quotes, lua {}
  base0D = "#0CECDD", -- funcs, methods, attr ids, headings, html inner text
  base0E = "#ffe405", -- keywords, markup italic, diff changed
  base0F = "#f0faff", -- a monkey threw darts at a wall to decide which punctuation base0F and base0C would be used for
}

M.base_30 = {
  white = "#F8F8F2", -- active line num
  darker_black = "#191729", -- nvimtree bg
  black = "#13121F", -- active buffer tab bg
  black2 = "#0e0e17", -- inactive tab bg, line bar (wish these were more clearly defined tbh)
  one_bg = "#23233d",
  one_bg2 = "#2b2b4c",
  one_bg3 = "#373760",
  grey = M.base_16.base01, -- line numbers (STOP USING BASE30 FOR STUFF THAT BASE16 ALREADY DEFINED!!)
  grey_fg = M.base_16.base03, -- comments (THIS IS ALREADY DEFINED IN BASE16 !!!!!!!!)
  grey_fg2 = "#756e96",
  light_grey = "#b8c7cf",
  red = "#ff3064", -- changed git files,
  baby_pink = "#ff5fa5",
  pink = "#ff5ff5",
  line = M.base_16.base07, -- ok but base07 is RIGHT there...
  green = "#42F032",
  vibrant_green = "#00FFAB",
  nord_blue = "#38F0E8",
  blue = "#05C3FF",
  yellow = "#ffe405", -- README nvim-tree
  sun = "#d5ee11",
  purple = "#BD93F9",
  dark_purple = "#a166f6",
  teal = "#92A2D4",
  orange = "#FFB86C",
  cyan = "#0CECDD",
  statusline_bg = M.base_16.base01, -- more redefining base16 i see
  lightbg = M.base_16.base07, -- really? two in a row?
  violet = "#826aed",
  pmenu_bg = "#826aed",
  folder_bg = "#826aed",
  darkgreen = "#464a29",
  brownred = "#4a2d29",
}

M.polish_hl = {
  syntax = {
    -- Keyword = { fg = "" },
    -- Include = { fg = "" },
    -- Tag = { fg = "" },
  },
  treesitter = {
    -- ["@attribute"] = { fg = M.base_30.cyan },
    ["@punctuation.bracket"] = { fg = M.base_16.base0F },
    ["@parenthesis"] = { link = "@punctuation.bracket" },
    -- ["@variable.parameter"] = { fg = M.base_30.green },
  },
}

M.type = "dark"

return M

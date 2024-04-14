local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  api.config.mappings.default_on_attach(bufnr)
end

local M = {
  disable_netrw = true,
  on_attach = on_attach,
  git = { ignore = false },
  renderer = {
    icons = {
      glyphs = {
        git = { -- this is so stupid lmao
          unstaged = "😴",
          staged = "😎",
          unmerged = "😈",
          untracked = "😭",
          renamed = "😶",
          deleted = "😵",
        },
      },
    },
  },
}

return M

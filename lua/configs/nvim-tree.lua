local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  api.config.mappings.default_on_attach(bufnr)
end

local M = {
  on_attach = on_attach,
  filters = {
    dotfiles = false,
  },
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  view = {
    adaptive_size = false,
    side = "left",
    width = 30,
    preserve_window_proportions = true,
  },
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    root_folder_label = false,
    highlight_git = true,
    highlight_opened_files = "none",

    indent_markers = {
      enable = false,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
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

-- local M = {
--   disable_netrw = true,
--   on_attach = on_attach,
--   git = { ignore = false },
--   renderer = {
--     icons = {
--       glyphs = {
--         git = { -- this is so stupid lmao
--           unstaged = "😴",
--           staged = "😎",
--           unmerged = "😈",
--           untracked = "😭",
--           renamed = "😶",
--           deleted = "😵",
--         },
--       },
--     },
--   },
-- }

return M

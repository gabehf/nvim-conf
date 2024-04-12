return {
  "nvim-tree/nvim-tree.lua",
  opts = {
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
  },
}

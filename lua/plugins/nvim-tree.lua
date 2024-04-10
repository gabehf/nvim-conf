return {
  "nvim-tree/nvim-tree.lua",
  opts = {
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

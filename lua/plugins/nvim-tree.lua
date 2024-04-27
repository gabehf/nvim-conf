return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    -- opts = function()
    --  return { override = require "nvchad.icons.devicons" }
    -- end,
    config = function(_, opts)
      -- dofile(vim.g.base46_cache .. "devicons")
      require("nvim-web-devicons").setup(opts)
    end,
  },
  opts = function()
    return require "configs.nvim-tree"
  end,
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end,
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- nvchad ui stuff
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46_cache/"

vim.g.mapleader = " "
vim.keymap.set({ "n", "v" }, "<Left>", "")
vim.keymap.set({ "n", "v" }, "<Down>", "")
vim.keymap.set({ "n", "v" }, "<Up>", "")
vim.keymap.set({ "n", "v" }, "<Right>", "")

vim.keymap.set({ "n", "i" }, "<C-s>", ":w<CR>")

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)
local lazy_config = require "configs.lazy"
-- TODO: investigate why using lazy_config here causes lsp to break
require("lazy").setup { import = "plugins" }

-- more nvchad ui stuff
-- dofile(vim.g.base46_cache .. "defaults")
-- dofile(vim.g.base46_cache .. "statusline")
-- dofile(vim.g.base46_cache .. "syntax")
-- dofile(vim.g.base46_cache .. "treesitter")
-- dofile(vim.g.base46_cache .. "git")
-- dofile(vim.g.base46_cache .. "nvimtree")

-- or if you want to load all base46 integrations at startup itself
local integrations = require("nvconfig").base46.integrations

for _, name in ipairs(integrations) do
  dofile(vim.g.base46_cache .. name)
end

vim.o.number = true
-- require("nvim-tree.api").tree.open() -- open tree on start
-- vim.schedule(function()
require "options"
require "remaps"
-- end)

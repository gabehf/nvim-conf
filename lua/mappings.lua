require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- disable arrow keys
map("n", "<Up>", "<nop>")
map("n", "<Down>", "<nop>")
map("n", "<Left>", "<nop>")
map("n", "<Right>", "<nop>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- custom Leader binds
map("n", "<Leader>sd", ":s/", { desc = "Shortcut to sed" })
map("n", "<Leader>qq", ":qa<CR>", { desc = "Write all and quit all" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

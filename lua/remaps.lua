local map = vim.keymap.set
-- general mappings
map('n', ';', ':')
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })
map("n", "<leader>qq", ":wa<CR>:qa<CR>" )

-- telescope keybinds
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]ile' })
map('n', '<leader>pg', builtin.live_grep, { desc = '[p]roject [g]rep' })
map('n', '<leader>fb', builtin.buffers, { desc = '[f]ind [b]uffer' })
map('n', '<leader>fh', builtin.help_tags, { desc = '[f]ind [h]elp' })
map("n", "<leader>fg", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "[f]ile [g]rep" })

-- base46 maps
map('n', '<leader>th', '<cmd>Telescope themes<CR>', { desc = '[th]emes' })

-- nvim-tree mapping
map('n', '<leader>e', '<cmd>NvimTreeOpen<CR>')

-- comment
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Toggle" })

-- tabufline
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- lsp 
map("n", "<leader>lf", vim.diagnostic.open_float, { desc = "Lsp floating diagnostics" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Lsp prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Lsp next diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Lsp diagnostic loclist" })

map(
  "v",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Comment Toggle" }
)

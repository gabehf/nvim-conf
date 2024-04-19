local map = vim.keymap.set
-- general mappings
map("n", ";", ":")
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save" })
map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })
map("n", "<leader>qq", ":wa<CR>:qa<CR>")
map("i", "jk", "<Esc>")

-- telescope keybinds
local builtin = require "telescope.builtin"
map("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]ile" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "[f]ind [r]ecent file" })
map("n", "<leader>pg", builtin.live_grep, { desc = "[p]roject [g]rep" })
map("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]uffer" })
map("n", "<leader>fh", builtin.help_tags, { desc = "[f]ind [h]elp" })
map("n", "<leader>fg", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "[f]ile [g]rep" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
map("n", "<leader>th", "<cmd>Telescope colorscheme<CR>", { desc = "[th]eme switcher" })

-- base46 maps
map("n", "<leader>rt", function()
  os.execute('rm -r "' .. vim.g.base46_cache .. '"')
  require("base46").load_all_highlights()
  vim.api.nvim_exec_autocmds("User", { pattern = "NvChadThemeReload" })
end)

-- nvim-tree mapping
map("n", "<leader>e", "<cmd>NvimTreeOpen<CR>")

-- comment
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment Toggle" })

-- tabufline
map("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Buffer Goto next" })
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Buffer Goto Prev" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Buffer Close" })

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

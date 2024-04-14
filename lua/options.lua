vim.o.mouse = "nv"
vim.o.mousemodel = "extend"

-- optimization for WSL
-- vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
--   once = true,
--   callback = function()
--     if vim.fn.has "win32" == 1 or vim.fn.has "wsl" == 1 then
--       vim.g.clipboard = {
--         copy = {
--           ["+"] = "win32yank.exe -i --crlf",
--           ["*"] = "win32yank.exe -i --crlf",
--         },
--         paste = {
--           ["+"] = "win32yank.exe -o --lf",
--           ["*"] = "win32yank.exe -o --lf",
--         },
--       }
--     elseif vim.fn.has "unix" == 1 then
--       if vim.fn.executable "xclip" == 1 then
--         vim.g.clipboard = {
--           copy = {
--             ["+"] = "xclip -selection clipboard",
--             ["*"] = "xclip -selection clipboard",
--           },
--           paste = {
--             ["+"] = "xclip -selection clipboard -o",
--             ["*"] = "xclip -selection clipboard -o",
--           },
--         }
--       elseif vim.fn.executable "xsel" == 1 then
--         vim.g.clipboard = {
--           copy = {
--             ["+"] = "xsel --clipboard --input",
--             ["*"] = "xsel --clipboard --input",
--           },
--           paste = {
--             ["+"] = "xsel --clipboard --output",
--             ["*"] = "xsel --clipboard --output",
--           },
--         }
--       end
--     end
--    vim.opt.clipboard = "unnamedplus"
--  end,
--  desc = "Lazy load clipboard",
--})

-- enable cursor line
vim.o.cursorlineopt = "both"

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank { timeout = 500 }
  end,
})

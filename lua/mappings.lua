require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n","<C-PageDown>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n","<C-PageUp>", "<cmd>bprevious<cr>",{ desc = "Previous buffer" })
map('n',"gra", function() vim.lsp.buf.code_action() end, {desc = "vim.lsp.buf.code_action()" })
map("x","gra",  function() vim.lsp.buf.code_action() end, { desc = "vim.lsp.buf.code_action()" })
map("n","grn", function() vim.lsp.buf.rename() end ,{desc = "vim.lsp.buf.rename()" })
map("n","grr", function() vim.lsp.buf.references() end ,{ desc = "vim.lsp.buf.references()" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

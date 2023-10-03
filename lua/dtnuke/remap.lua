
-- popup files explorer window
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move higlighted/selected lines up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")


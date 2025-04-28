vim.g.mapleader = " "

local vks = vim.keymap.set

vks("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- copy to sys clipboard
vks("n", "<leader>y", "\"+y")
vks("v", "<leader>y", "\"+y")

vks("n", "<C-h>", "<C-w>h")
vks("n", "<C-l>", "<C-w>l")
vks("n", "<C-k>", "<C-w>k")
vks("n", "<C-j>", "<C-w>j")

--select all
vks("n", "<C-A-a>", "gg<S-v>G")
-- save file
vks("n", "<C-s>", ":w<cr>")

vks("n", "<C-c>", "<cmd>noh<CR>")
vks("i", "<C-c>", "<Esc>")
vks("n", "<C-c>", "<Esc>")
vks("n", "<Esc>", "<cmd>noh<CR>")

vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end, { noremap = true, silent = true })

-- visual change lines
vks("v", "J", ":m '>+1<CR>gv=gv")
vks("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

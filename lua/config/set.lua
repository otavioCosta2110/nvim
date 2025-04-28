vim.cmd("highlight TelescopeBorder guibg=none")
-- vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=none")
vim.cmd("highlight TelescopePromptBorder guibg=none")
vim.cmd("highlight TelescopePreviewBorder guibg=none")
vim.cmd("highlight SignColumn guibg=none ")
vim.cmd("highlight telescopeborder guibg=none")
vim.cmd("highlight pmenu guibg=#0a0a0a")
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.termguicolors = true

vim.opt.guicursor = "n-v-c-i:block"


vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")


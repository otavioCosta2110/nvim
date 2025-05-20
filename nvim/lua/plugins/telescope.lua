return   {
  'nvim-telescope/telescope.nvim',
  config = function()
    local telescope = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
    vim.keymap.set("n", "<leader>fw", telescope.live_grep, {})
    vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>")
    vim.keymap.set("n", "<leader>b", telescope.buffers, {})
    vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
  end,

  dependencies = { 'nvim-lua/plenary.nvim' }
}


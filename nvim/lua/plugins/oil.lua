return {
  {
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
        }
      })
      vim.keymap.set("n", "<leader>e", vim.cmd.Oil);
    end
  },
  { 'nvim-tree/nvim-web-devicons' }
}

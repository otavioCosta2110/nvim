return
{
  "otaviocosta2110/dust.nvim",
  config = function()
    vim.opt.background = "dark" -- or "light"
    vim.cmd("colorscheme dust")
  end,
}
-- {
  -- dir = vim.fn.stdpath("config") .. "/lua/plugins/gruvbox_minimal",
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   -- vim.opt.background = "dark"
  --   vim.cmd("colorscheme gruvbox_minimal")
  -- end,
  -- '~/.config/nvim/nvim_theme',
  -- config = function()
  --   vim.cmd("colorscheme gruvbox_minimal")
  -- end
-- }
-- {
--   "sainnhe/gruvbox-material",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.g.gruvbox_material_transparent_background = 2
--     vim.cmd.colorscheme "gruvbox-material"
--   end
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   lazy = false,    -- make sure we load this during startup
--   priority = 1000, -- load before other plugins
--   config = function()
--     require("catppuccin").setup({
--       transparent_background = true,
--       -- You might also need:
--       term_colors = true,
--     })
--     vim.cmd.colorscheme("catppuccin-mocha")
--   end
-- }

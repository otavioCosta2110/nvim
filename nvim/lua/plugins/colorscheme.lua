return
{
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_transparent_background = 2
    vim.cmd.colorscheme "gruvbox-material"
  end
}

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

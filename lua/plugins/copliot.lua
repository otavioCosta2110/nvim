return {
  "github/copilot.vim",
  vim.keymap.set('i', '<C-[>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
  })
}

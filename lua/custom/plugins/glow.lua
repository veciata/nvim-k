return {
  'ellisonleao/glow.nvim',
  config = function()
    require('glow').setup {
      -- Customize glow.nvim settings here
      border = 'shadow', -- border style for the floating window
      style = 'dark', -- style to use for rendering
      pager = false, -- disable the pager
      width = 320, -- width of the preview window
      height = 140, -- height of the preview window
    }

    -- Set up key mapping for <leader>mg
    vim.api.nvim_set_keymap('n', '<leader>mg', ':Glow<CR>', { noremap = true, silent = true })
  end,
  cmd = 'Glow',
}

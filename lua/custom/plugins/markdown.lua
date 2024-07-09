return {
  'iamcco/markdown-preview.nvim',
  build = 'cd app && npm install',
  ft = 'markdown',
  config = function()
    -- Additional configuration for markdown-preview.nvim
    vim.g.mkdp_auto_start = 1
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_highlight_code_blocks = 1
    vim.g.mkdp_browser = '' -- Change the default browser if needed
  end,
  -- Additional functions or setup specific to this plugin can go here
  --
  --
}

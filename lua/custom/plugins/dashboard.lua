return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {

        header = {
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌]],
          [[▐░█░█░█▀▀░█▀▀░▀█▀░█▀█░▀█▀░█▀█▌]],
          [[▐░▀▄▀░█▀▀░█░░░░█░░█▀█░░█░░█▀█▌]],
          [[▐░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░░▀░░▀░▀▌]],
          [[▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌]],
          [[]],
          [[]],
          [[]],
        },

        center = {
          {
            icon = ' ',
            desc = 'Find File          ',
            desc_hl = 'String',
            key = 'sf',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'Telescope find_files',
          },
          {
            icon = ' ',
            desc = 'Recents             ',
            desc_hl = 'String',
            key = 's.',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'Telescope oldfiles',
          },
          {
            icon = ' ',
            desc = 'Find Word         ',
            desc_hl = 'String',
            key = 'sg',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'Telescope live_grep',
          },
          {
            icon = ' ',
            desc = 'New File           ',
            desc_hl = 'String',
            key = 'n',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'enew',
          },
          {
            icon = ' ',
            desc = 'Bookmarks     ',
            desc_hl = 'String',
            key = 'sb',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'Telescope marks',
          },
          {
            icon = ' ',
            desc = 'Load Last Session',
            desc_hl = 'String',
            key = 's-',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'SessionLoad',
          },
          {
            icon = ' ',
            desc = 'Quit                    ',
            desc_hl = 'String',
            key = 'q',
            key_hl = 'Number',
            key_format = ' <leader>%s', -- include leader key
            action = 'qa!',
          },
        },
        footer = {
          '🚀 Sharp tools make good work.',
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}

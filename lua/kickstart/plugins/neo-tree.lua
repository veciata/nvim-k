-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<space>\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  config = function()
    require('neo-tree').setup {
      sources = {
        'filesystem',
        'buffers',
        'git_status',
      },
      filesystem = {
        window = {
          mappings = {
            ['<space>p'] = 'image_preview', -- Change the keybinding to Alt + p if preferred
          },
        },
        commands = {
          image_preview = function(state)
            local node = state.tree:get_node()
            if node.type == 'file' and (node.ext == 'png' or node.ext == 'jpg' or node.ext == 'jpeg' or node.ext == 'gif') then
              require('image_preview').PreviewImage(node.path)
            else
              vim.cmd.edit(node.path)
            end
          end,
        },
      },
      buffers = {
        follow_current_file = true, -- Automatically focus the current file
        group_empty_dirs = true, -- Group empty directories together
        show_unloaded = true, -- Show unloaded buffers
        window = {
          mappings = {
            ['<space>bd'] = 'buffer_delete', -- Keybinding to delete buffer
          },
        },
      },
      default_component_configs = {
        indent = {
          padding = 1,
          with_markers = true,
        },
        icon = {
          folder_closed = '',
          folder_open = '',
          folder_empty = '',
          default = '',
          file = {
            ['js'] = '', -- JavaScript file icon from all-the-icons.el
            -- Add other file type icons if needed
          },
        },
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['<CR>'] = 'open',
          ['v'] = 'vsplit',
          ['s'] = 'split',
        },
      },
    }
  end,
}

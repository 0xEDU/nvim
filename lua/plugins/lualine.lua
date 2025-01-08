return {
  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = true,
        theme = 'catppuccin-macchiato',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {},
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'filename' },
        lualine_c = { {
          'lsp_progress',
          colors = {
            percentage = '#008080',
            title = '#008080',
            message = '#008080',
            spinner = '#008080',
            lsp_client_name = '#c678dd',
            use = true,
          },
          separators = {
            component = ' ',
            progress = ' | ',
            message = { pre = '(', post = ')' },
            percentage = { pre = '', post = '%% ' },
            title = { pre = '', post = ': ' },
            lsp_client_name = { pre = '[', post = ']' },
            spinner = { pre = '', post = '' },
          },
          only_show_attached = true,
          display_components = { 'lsp_client_name', 'spinner', { 'title', 'percentage', 'message' } },
          timer = {
            progress_enddelay = 500,
            spinner = 1000,
            lsp_client_name_enddelay = 1000,
            attached_delay = 3000,
          },
          spinner_symbols = { '😺 ', '😸 ', '😻 ', '😼 ', '😽 ' },
          message = { initializing = 'Initializing…', commenced = 'In Progress', completed = 'Completed' },
          max_message_length = 30,
        } },
        lualine_x = { 'ctime', 'progress' },
        lualine_y = { 'branch', 'fileformat', 'filetype' },
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = { 'branch' },
      },
      tabline = {},
      extensions = {},
    },
    dependencies = {
      -- Clock for lualine
      'archibate/lualine-time',

      -- LSP progress bar
      'arkav/lualine-lsp-progress',
    }
  }
}

local colors = {
  yellow = '#ECBE7B',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#98be65',
  orange = '#FF8800',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#51afef',
  red = '#ec5f67',
}

local options = {
  icons_enabled = true,
  theme = 'catppuccin-macchiato',
  component_separators = { left = '', right = '' },
  section_separators = { left = '', right = '' },
  disabled_filetypes = {},
}

local sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'filename' },
  lualine_c = {{
    'lsp_progress',
    colors = {
      percentage = colors.cyan,
      title = colors.cyan,
      message = colors.cyan,
      spinner = colors.cyan,
      lsp_client_name = colors.magenta,
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
  }},
  lualine_x = { 'ctime' },
  lualine_y = { 'branch', 'filetype' },
  lualine_z = {},
}

local inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {},
  lualine_z = { 'branch' },
}

return {
  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
      options = options,
      sections = sections,
      inactive_sections = inactive_sections,
      tabline = {},
      extensions = {},
    },
    dependencies = {
      -- Clock for lualine
      'archibate/lualine-time',
    }
  }
}

return {
  { -- Neovim theme
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      color_overrides = {
          frappe = {
              base = "#5e5fab",
               text = "#ffc9dc",
              surface2 = "#32358d",
              surface1 = "#8aa1e1",
              surface0 = "#3e3f71",
              overlay0 = "#ded76e"
         },
      }
    }
  },
  { -- Lualine theme
    'folke/tokyonight.nvim',
  },
}

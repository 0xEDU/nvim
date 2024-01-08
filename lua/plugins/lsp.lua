return {
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Additional lua configuration, makes nvim stuff amazing!
      { 'folke/neodev.nvim', opts = {} },

      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim' },

      -- LSP config
      'williamboman/mason-lspconfig.nvim'
    },
  },
}

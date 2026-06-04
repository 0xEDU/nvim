return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'mendes-jv/42sp-header',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- render markdown
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim', 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },

  -- tree-like view for folder hierarchy
  {
    'nvim-tree/nvim-tree.lua',
    opts = {},
  }
}

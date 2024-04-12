return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  'mendes-jv/42sp-header',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  {
    'andweeb/presence.nvim',
    opts = {},
    event = 'UIEnter'
  },
}

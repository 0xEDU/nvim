return {
  -- Detect tabstop and shiftwidth automatically
  -- 'tpope/vim-sleuth',
  'github/copilot.vim',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  {
	'nvim-tree/nvim-tree.lua',
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup {}
	end,
}
}

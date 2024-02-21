return {
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { defaults = { file_ignore_patterns = { "node_modules", "venv" } } }
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  }
  -- {
  --   'nvim-telescope/telescope-fzf-native.nvim',
  --   -- NOTE: If you are having trouble with this installation,
  --   --       refer to the README for telescope-fzf-native for more instructions.
  --   build = 'make',
  --   cond = function()
  --     return vim.fn.executable 'make' == 1
  --   end,
  --   opts = {
  --     defaults = {
  --       mappings = {
  --         i = {
  --           ['<C-u>'] = false,
  --           ['<C-d>'] = false,
  --         },
  --       },
  --     },
  --   }
  -- }
}

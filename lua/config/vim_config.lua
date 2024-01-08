-- Tabstop
-- local create_autocmd = vim.api.nvim_create_autocmd
-- create_autocmd("BufRead", {
--   pattern = "*.cpp,*.hpp,*h",
--   callback = function()
--     vim.cmd("set tabstop=4")
--   end
-- })

-- Indentation and formatting
-- vim.opt.tabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.numberwidth = 4

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Colorscheme
vim.cmd.colorscheme 'catppuccin-frappe'

-- Kitties
local signs = { Error = "🙀", Warn = "😾", Hint = "😺", Info = "😸" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.api.nvim_set_keymap('n', '<Space>t', ':tabnew<CR>:Telescope find_files<CR>', { noremap = true, silent = true })

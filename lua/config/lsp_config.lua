-- Mason
require("mason").setup()

-- Completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Global LSP defaults
vim.lsp.config("*", {
  capabilities = capabilities,
})

-- Buffer-local keymaps
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local bufnr = event.buf

    local nmap = function(keys, func, desc)
      vim.keymap.set("n", keys, func, {
        buffer = bufnr,
        desc = desc and ("LSP: " .. desc) or nil,
      })
    end

    nmap("gd", vim.lsp.buf.definition, "Goto Definition")
    nmap("gr", vim.lsp.buf.references, "Goto References")
    nmap("K", vim.lsp.buf.hover, "Hover Documentation")
    nmap("<leader>rn", vim.lsp.buf.rename, "Rename")
    nmap("<leader>ca", vim.lsp.buf.code_action, "Code Action")

    vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
      vim.lsp.buf.format()
    end, {})
  end,
})

-- Lua
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      workspace = {
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- Clojure
vim.lsp.config("clojure_lsp", {})

-- Enable servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("clojure_lsp")

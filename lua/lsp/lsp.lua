-- Load nvim-lspconfig
local lspconfig = require('lspconfig')

-- Capabilities (optional, useful if you’re using completion like blink.cmp or nvim-cmp)
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- If you're using blink.cmp or cmp_nvim_lsp, uncomment one of these:
capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)
-- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Lua LS setup with custom settings
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- Other language servers
lspconfig.gopls.setup({ capabilities = capabilities })
lspconfig.clangd.setup({ capabilities = capabilities })
lspconfig.rust_analyzer.setup({ capabilities = capabilities })
lspconfig.jdtls.setup({ capabilities = capabilities })
lspconfig.zls.setup({ capabilities = capabilities })
lspconfig.cmake.setup({ capabilities = capabilities })
lspconfig.glsl_analyzer.setup({ capabilities = capabilities })

-- Diagnostic settings
vim.diagnostic.config({
  virtual_lines = false,
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN]  = "󰀪 ",
      [vim.diagnostic.severity.INFO]  = "󰋽 ",
      [vim.diagnostic.severity.HINT]  = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN]  = "WarningMsg",
    },
  },
})


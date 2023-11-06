-- 
-- --------------------------- LSP ZERO ---------------------------
--
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
  error = 'x',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

local rust_tools = require('rust-tools')
rust_tools.setup({})

-- 
-- --------------------------- LSP CONFIG ---------------------------
--
local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

-- -- custom lsp server for qml file with qmlls6 --
-- Check if the config is already defined (useful when reloading this file)
if not configs.qml6_lsp then
  configs.qml6_lsp = {
    default_config = {
      cmd = {'qmlls6'},
      filetypes = {'qmljs'},
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname)
      end,
      settings = {},
    },
  }
end

lspconfig.qml6_lsp.setup{}

-- 
-- --------------------------- MASON ---------------------------
--
require('mason').setup({})

require('mason-lspconfig').setup({
	ensure_installed = { 'elmls', 'tsserver', 'html', 'cssls', 'bashls', 'luau_lsp', 'rust_analyzer', 'lua_ls', 'lemminx'},
	handlers = { lsp_zero.default_setup }
})


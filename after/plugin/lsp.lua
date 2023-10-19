local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = { 'elmls', 'tsserver', 'html', 'cssls', 'bashls', 'luau_lsp', 'rust_analyzer', 'lua_ls'},
	handlers = {
		function(server)
			lsp_zero.default_setup(server)
		end,
	},
})


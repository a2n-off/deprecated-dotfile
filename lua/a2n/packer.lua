vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Telescope
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { {'nvim-lua/plenary.nvim'} } }

  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

	-- fugitive (for git stuff)
	use { 'tpope/vim-fugitive' }

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
		requires = {
			-- manage LSP from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},

      -- For rust
      {'simrat39/rust-tools.nvim'}
		}
	}

	-- workspace lsp status
	use { 'j-hui/fidget.nvim', tag = 'legacy' }

  -- undotree
  use { 'mbbill/undotree' }

  -- Catppuccin
  use { 'catppuccin/nvim', as = 'catppuccin' }

  -- auto pairs for general symbol
  use 'windwp/nvim-autopairs'

  -- git blame inline
  use 'lewis6991/gitsigns.nvim'

end)


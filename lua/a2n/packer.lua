-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { {'nvim-lua/plenary.nvim'} } }

  -- TreeSitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- fugitive (for git stuff)
  use { 'tpope/vim-fugitive' }

end)


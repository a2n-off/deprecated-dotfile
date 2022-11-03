vim.g.catppuccin_flavour = 'latte' -- latte, frappe, macchiato, mocha

require('catppuccin').setup({
  transparent_background = true,
  styles = {
    comments = { fg = "#000000" }
  }
})

vim.cmd [[colorscheme catppuccin]]


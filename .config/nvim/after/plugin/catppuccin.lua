vim.g.catppuccin_flavour = 'frappe' -- latte, frappe, macchiato, mocha

-- this is a comment
require('catppuccin').setup({
  transparent_background = true,
  custom_highlights = function(colors)
    return {
      Comment = { fg = colors.teal },
    }
  end
})

vim.cmd [[colorscheme catppuccin]]


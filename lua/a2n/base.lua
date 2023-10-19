-- NEOVIM
vim.opt.termguicolors = true -- enabled 24bit RGB color
vim.opt.signcolumn = 'yes' -- always draw the sign column
vim.opt.updatetime = 50 -- update time for the swap file and for the cursorHold event
-- vim.opt.colorcolumn = '80' -- colorized the 80th column
vim.opt.clipboard:append { 'unnamedplus' } -- 

-- BACKUP
vim.opt.backup = false -- no backup of the current file is made

-- FILE LINES
vim.wo.number = true -- show line number
vim.wo.relativenumber = true -- set line number format to relative
vim.opt.wrap = false -- wrap lines
vim.opt.scrolloff = 8 -- min nb of line around your cursor (4 above, 4 below)

-- INDENT
vim.opt.smartindent = true -- try to be smart w/ indent
vim.opt.autoindent = true -- indent new line the same amount as the line before
vim.opt.shiftwidth = 2 -- width for autoindents

-- TAB
vim.opt.expandtab = true -- converts tabs to white space
vim.opt.tabstop = 2 -- nb of space for a tab in the file
vim.opt.softtabstop = 2 -- nb of space for a tab in editing operations

-- SEARCH
vim.opt.ignorecase = true -- case insensitive UNLESS /C or capital in search
vim.opt.hlsearch = true -- highlight all the result found
vim.opt.incsearch = true -- incremental search (show result on live)
vim.opt.wildignore:append { '*/node_modules/*', '*/vendor/*' } -- the search ignore this folder

-- CONTEXTUAL
vim.opt.title = true -- set the title of the window automaticaly, usefull for tabs plugin
vim.opt.path:append { '**' } -- search (gf or :find) files down into subfolders

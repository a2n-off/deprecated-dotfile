vim.cmd("autocmd!")

-- script encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- config
vim.wo.number = true -- show line number
vim.wo.relativenumber = true -- set line number format
vim.opt.title = true
vim.opt.autoindent = true -- indent a new line the same amount as the line just typed
vim.opt.smartindent = true
vim.opt.hlsearch = true -- highlight search
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true --converts tabs to white space
vim.opt.scrolloff = 10
vim.opt.shell = 'sh'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2 -- width for autoindents
vim.opt.tabstop = 2 -- nb of column occupied by a tab
vim.opt.wrap = false -- wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- search files down into subfolders
vim.opt.wildignore:append { '*/node_modules/*', '*/vendor/*' } -- the search ignore this folder
vim.opt.formatoptions:append { 'r' } -- add * in block comments

-- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})


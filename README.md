personal config file for : 

 - nvim (including the last version for lsp-zero)
 - zsh (need to update check other branch atm)

### plugins

 - packer
 - catppuccin
 - fidget
 - lsp-zero v3 w/ mason
 - telescope
 - treesitter
 - undotree (not setup check below)

### nvim settings

 - map leader set to space
 - all the others (in base.lua) settings have comment

### enabling undotree

Update `base.lua` with the following value :

```lua
vim.opt.swapfile = false -- disable the default backup behavior
vim.opt.backup = false   -- disable the default backup behavior
vim.opt.undofile = true  -- activate the undofile behavior
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir' -- use the directory of undotree plugin for managing the history
```

Add a config file named `undotree` in `after/plugin` :

```lua
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
```

### the other brach in this repo

The default branch is the updated one. The other is just here for reference.


local keymap = vim.keymap

-- disabled the yank w/ x
-- keymap.set('n', 'x', '"_x')

-- increment/decrement (when the cursor is in a number)
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- save w/ root permission (not working for now)
-- vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- new buffer
keymap.set('n', 'te', ':tabedit<Return>')
-- split current buffer
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- move inside current buffer
keymap.set('n', '<Space>', '<C-w>w') -- loop all buffer
-- keymap.set('n', 's<Left>', '<C-w>h')
-- keymap.set('n', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h') -- left
keymap.set('', 'sk', '<C-w>k') -- top
keymap.set('', 'sj', '<C-w>j') -- bottom
keymap.set('', 'sl', '<C-w>l') -- right
-- resize current buffer
-- eg : C-w = ctrl + w and left
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


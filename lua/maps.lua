local cmp = require'cmp'
local keymap = vim.keymap

-- Tab to chose LSP auto complete
keymap.set('i', '<tab>', '<C-n>', { silent = true})
-- keymap.set("i", "<Tab>", function ()
--   if cmp.visible() then
--     return "<C-n>"
--   else
--     return "<Tab>"
--   end
-- end, {expr = true, silent = true})

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
-- keymap.set('n', 'dw', 'vb"_d')

-- Select all 
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Enter>', { silent = true })
keymap.set('n', 'tn', ':tabnext<Enter>', { silent = true })
keymap.set('n', 'tp', ':tabprev<Enter>', { silent = true })
keymap.set('n', 'tc', ':tabclose<Enter>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left> ', '<C-w>h>')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh',  '<C-w>h')
keymap.set('', 'sk',  '<C-w>k')
keymap.set('', 'sj',  '<C-w>j')
keymap.set('', 'sl',  '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


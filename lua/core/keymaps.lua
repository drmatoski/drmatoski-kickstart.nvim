-- [[ Basic Keymaps ]]

--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Custom Keymaps

-- Exit INSERT mode with jk
vim.keymap.set('i', 'jk', '<ESC>', { desc = 'Exit INSERT mode with jk' })
-- Exit COMMAND mode with jk
vim.keymap.set('c', 'jk', '<ESC>', { desc = 'Exit COMMAND mode with jk' })
-- Toggle Zen Mode
vim.keymap.set('n', '<leader>tz', ':ZenMode<CR>', { desc = '[T]oggle [Z]en Mode' })
-- Go to previous file with backspace
vim.keymap.set('n', '<Tab>', '<C-^>', { desc = 'Go to previous file' })

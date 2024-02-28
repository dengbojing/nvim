local keymap = vim.keymap.set
local builtin = require('telescope.builtin')
local treeapi = require('nvim-tree.api')
local dap = require('dap')
keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.oldfiles, {})
keymap('n', '<leader>fc', builtin.commands, {})
keymap('n', '<leader>to', treeapi.tree.focus, {})
keymap('n', '<leader>tc', treeapi.tree.close, {})
keymap('n', '<F5>', dap.continue)
keymap('n', '<F10>', dap.step_over)
keymap('n', '<F11>', dap.step_into)
keymap('n', '<F12>', dap.step_out)
keymap('n', '<leader>db', require 'dap'.toggle_breakpoint)
vim.fn.sign_define('DapBreakpoint',{ text ='🟥', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})

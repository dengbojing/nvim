local g = vim.g
vim.cmd[[colorscheme nord]]
vim.opt.shell = 'bash'
vim.opt.shellxquote = ''
vim.api.nvim_set_option('clipboard','unnamed')
vim.api.nvim_command('set fillchars=eob:`')
g.nord_disable_background = true
g.nord_italic = false

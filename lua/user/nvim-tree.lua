vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


local function my_on_attach(bufnr)
	local api = require('nvim-tree.api')

	local function opts(desc)
		return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- copy default mappings here from defaults in next section
	-- vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))
	vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,        opts('Up'))---
	-- OR use all default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- remove a default
	-- vim.keymap.del('n', '<C-]>', { buffer = bufnr })

	-- override a default
	-- vim.keymap.set('n', '<C-e>', api.tree.reload,                       opts('Refresh'))

	-- add your mappings
	-- vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
	---
end

require("nvim-tree").setup({
	---
	on_attach = my_on_attach,
  disable_netrw = false,
	hijack_netrw = true,
	respect_buf_cwd = true,
	view = {
		number = true,
		relativenumber = true,
	},
	filters = {
		custom = { ".git" },
	},
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	---
})

-- require("nvim-tree").setup()

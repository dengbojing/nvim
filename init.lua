vim.g.mapleader = ' '
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- require("user.plugins")


require('lazy').setup({

	"williamboman/mason.nvim";
	"shaunsingh/nord.nvim"; -- nvim theme
	 {
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons"   }
	 };	-- line status icon
   "nvim-lua/popup.nvim"; -- An implementation of the Popup API from vim in Neovim
	 "neovim/nvim-lspconfig"; -- language server protocol
	 {
    "williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
	 };
	 {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		}
	 };
	 {"mfussenegger/nvim-dap", enable=true}; -- debug adapter protocol
	 {"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap","kyazdani42/nvim-web-devicons"} }; -- debug adapter protocol and an ui for this
	 { "nvim-neotest/nvim-nio" };
	 "nvim-tree/nvim-web-devicons";
   "folke/neodev.nvim"; -- use "nvim-lua/completion-nvim"
	 "nvim-treesitter/nvim-treesitter"; -- program languge sytanx tree 

	 "ellisonleao/glow.nvim"; -- for markdown preview

   "mfussenegger/nvim-jdtls";
	 {"akinsho/bufferline.nvim", tags = "4.5.3", dependencies = "nvim-tree/nvim-web-devicons"};


	 {
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			-- "quangnguyen30192/cmp-nvim-ultisnips",
			"hrsh7th/cmp-nvim-lua",
			"octaltree/cmp-look",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-calc",
			"f3fora/cmp-spell",
			"hrsh7th/cmp-emoji",
		  "hrsh7th/cmp-cmdline",
		  "hrsh7th/cmp-vsnip"
		}
	 }; --auto completion
	 "hrsh7th/cmp-nvim-lsp";
	 "L3MON4D3/LuaSnip"; --completion window
	 "saadparwaiz1/cmp_luasnip"; --completion window


	 {
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons"  }
	 };
	 {
		  "nvim-telescope/telescope.nvim", tag = "0.1.8",
		  dependencies = {
			{"nvim-lua/plenary.nvim"},
			{
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
		}
	}; -- find file



})

require('user.globals')
require('user.options')
require('user.telescope')
require('user.mappings')
require('user.nvim-cmp')
require('user.masonlsp')
require('user.lualine')
require('user.nvim-tree')
require('user.glow')
require('user.bufferline')
require('user.treesitter')
require('user.dapui')
require('user.neodev')
-- require('user.dashboard')




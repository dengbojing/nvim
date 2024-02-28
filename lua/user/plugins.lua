vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")

if not status_ok then
  return
end


return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
	use {
		"williamboman/mason.nvim",
	}
	use "shaunsingh/nord.nvim" -- nvim theme
	use {
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons"   }
	}	-- line status icon
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
	use "neovim/nvim-lspconfig" -- language server protocol
	use {
    "williamboman/mason-lspconfig.nvim",
		requires = {
			"williamboman/mason.nvim",
		},
	}
	use {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		requires = {
			"williamboman/mason.nvim",
		}
	}
	use {"mfussenegger/nvim-dap", enable=true} -- debug adapter protocol
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap","kyazdani42/nvim-web-devicons"} } -- debug adapter protocol and an ui for this
	use {"nvim-tree/nvim-web-devicons"}
  use {"folke/neodev.nvim"} -- use "nvim-lua/completion-nvim"
	use "nvim-treesitter/nvim-treesitter" -- program languge sytanx tree 

	use "ellisonleao/glow.nvim" -- for markdown preview

  use "mfussenegger/nvim-jdtls"
	use {"akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons"}


	use {
		"hrsh7th/nvim-cmp",
		requires = {
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
	} --auto completion
	use "L3MON4D3/LuaSnip" --completion window
	use "saadparwaiz1/cmp_luasnip" --completion window


	use {
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons"  }
	}
	use {
		  "nvim-telescope/telescope.nvim", tag = "0.1.1",
		  requires = { {"nvim-lua/plenary.nvim"} }
	} -- find file

	use {
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
			})
		end,
		requires = {"nvim-tree/nvim-web-devicons"}
	}

end)

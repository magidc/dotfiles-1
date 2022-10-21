--Ensuring Packer Is Installed
local status,packer = pcall(require,'packer')
if (not status) then
	print("Packer is not installed")
end

--Adding Packer
vim.cmd [[packadd packer.nvim]]

--Packer Config For Floating Install Window
packer.init{
	display = {
		open_fn = function()
			return require("packer.util").float{border = "rounded"}
		end,
	},
}

--Plugins
packer.startup(function(use)
	use 'wbthomason/packer.nvim' --Packer Itself
	use 'folke/tokyonight.nvim' --TokyoNight Colorscheme
	use 'kyazdani42/nvim-web-devicons' --Web Dev Icons
	use {
		'nvim-lualine/lualine.nvim', -- LuaLine As The StatusLine
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { -- Make Sure To Install RipGrep Before Installing Telescope
		'nvim-telescope/telescope.nvim', tag = '0.1.0', --Telescope
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'akinsho/bufferline.nvim' --BufferLine For Tabs
end)

--Plugins Setup
require('packer-plugins/tokyonight')
require('packer-plugins/lualine')
require('packer-plugins/telescope')
require('packer-plugins/bufferline')

local fn = vim.fn

-- automatically install packer

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
--
vim.cmd [[
  augroup packer_user_config
	  autocmd!
	  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer user a popup window
 
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

-- Install your plugins here
--
return packer.startup(function(use)
	-- My plugins here
	use "wbthomason/packer.nvim" -- Have packer manage itself
	use "nvim-lua/popup.nvim" -- An implmentation of the Popup API from vim in Neovim
	use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
	use "rust-lang/rust.vim" -- Rust
	use "kyazdani42/nvim-web-devicons"
	use {
		"nvim-lualine/lualine.nvim",
		 requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
	-- use "fatih/vim-go"
	use {
  "olexsmir/gopher.nvim",
  requires = { -- dependencies
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}

end)

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

require("lazy").setup({
	"rebelot/kanagawa.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,},
	{"nvim-telescope/telescope.nvim", branch = '0.1.x',
         dependencies = { 'nvim-lua/plenary.nvim' }
    	},
	{"nvim-lualine/lualine.nvim",
	 dependencies = {"nvim-tree/nvim-web-devicons"}
	},
})


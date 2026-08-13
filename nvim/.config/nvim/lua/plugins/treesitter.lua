return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  init = function()
		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
	config = function()
		local ensure_installed = {
			  "bash",
			  "c",
			  "cmake",
				"css",
				"html",
				"json",
				"lua",
				"make",
				"markdown",
				"rust",
				"toml",
				"vim",
		}

	  local already_installed = require("nvim-treesitter").get_installed()
	  local to_install = vim.iter(ensure_installed)
		:filter(function(parser)
			return not vim.tbl_contains(already_installed, parser)
		end)
		:totable()
		if #to_install > 0 then
		  require("nvim-treesitter").install(to_install)
		end
	end,
}

return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = true,
			view_options = {
				show_hidden = true
      }
		})
    vim.keymap.set("n", "s", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}

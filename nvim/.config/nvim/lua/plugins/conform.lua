return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        lua = {"stylua"},
        html = {"htmlbeautifier"},
        markdown = {"mdformat"},
        rust = {"rustfmt"},
        toml = {"taplo"},
        xml = {"xmllint"},
        bash = {"shellcheck"}
      }
    })
    vim.keymap.set("n", "<leader>cl", "<Cmd>ConformInfo<CR>", { desc = "Show Conform log" })
		vim.keymap.set("n", "<leader><leader>fd", "<Cmd>FormatDisable<CR>", { desc = "Disable autoformat-on-save" })
		vim.keymap.set("n", "<leader><leader>fe", "<Cmd>FormatEnable<CR>", { desc = "Re-enable autoformat-on-save" })
  end
}

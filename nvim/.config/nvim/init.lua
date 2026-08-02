vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.langmap:append "mneioOtT;hjkliIoO"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.relativenumber = true

require("config.lazy")

vim.lsp.enable("luals")

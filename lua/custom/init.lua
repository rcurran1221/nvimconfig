-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.wo.relativenumber = true
vim.o.shell="powershell"
vim.o.shellcmdflag="-command"
vim.o.shellquote="\\"
vim.o.shellxquote=""

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false

vim.o.smartindent = true
vim.o.smarttab = true

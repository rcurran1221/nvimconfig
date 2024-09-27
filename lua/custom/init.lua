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

if vim.g.neovide == true then
    vim.o.guifont='Hack Nerd Font:h11'
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
	vim.g.neovide_refresh_rate = 200
end

-- local timer = vim.loop.new_timer()
-- timer:start(5000, 5000, vim.schedule_wrap(function()
-- 		local clients = vim.lsp.get_active_clients()
-- 		for _, client in ipairs(clients) do
-- 			local buffers = client.attached_buffers	
-- 		-- 	for key, value in pairs(buffers) do
-- 		-- 	print("clientid: " .. client.id .. " buffer id: " .. key .. " is attached: " .. tostring(value))
-- 		-- end
-- 			if next(buffers) == nil then
-- 				-- print("clientid: " .. client.id .. " is not attached any buffers")
-- 				vim.lsp.stop_client(client.id)
-- 			end
-- 	end
-- end))

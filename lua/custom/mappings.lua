local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Toggle lazygit" },
    ["gr"] = {
      function()
        -- vim.lsp.buf.references()
        require("telescope.builtin").lsp_references()
        -- vim.cmd ":cclose"
      end,
      "go to references telescope",
    },
	["gi"] = {
		function()
			require("telescope.builtin").lsp_implementations()
		end,
		"go to implementation telescope"
	},
    ["<leader>ld"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "telescope diagnostics",
    },
    ["<leader>ls"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      "telescope document symbols",
    },
		["<leader>cp"] = {
			":let @+=expand('%:p') <CR>",
			"copy file path"
		}
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },
}

-- more keybinds!

return M

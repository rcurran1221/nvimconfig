---@type MappingsTable
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
    ["<leader>td"] = {
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
	["<leader>zm"] = {
			"<cmd> ZenMode <CR>",
			"Toggle ZenMode",
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

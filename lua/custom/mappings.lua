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
    ["<leader>xx"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "telescope diagnostics",
    },
    ["<leader>tt"] = {
      "<cmd> FloatermToggle <CR>",
      "Toggle Floaterm",
    },
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

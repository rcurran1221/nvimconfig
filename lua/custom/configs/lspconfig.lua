local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "gopls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.sqls.setup{
--     on_attach = on_attach,
--     capabilities = capabilities,
--     settings = {
--         sqls = {
--             connections = {
--                 {
--                     driver = 'mssql',
--                     proto = 'tcp',
--                     user = 'sa',
--                     password = 'redsox',
--                     host = 'localhost\\mssqlserver01',
--                     dbName = 'tc',
--                 }
--             }
--         }
--     }
-- }
-- lspconfig.sqlls.setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--     root_dir = function ()
--         return vim.loop.cwd()
--     end
-- }
lspconfig.csharp_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  organize_imports_on_format = true,
	-- handlers  = {
	-- 	["textDocument/definition"] = require('csharpls_extended').handler,
	-- 	["textDocument/typeDefinition"] = require('csharpls_extended').handler,
	-- }
}
-- lspconfig.omnisharp.setup {
--   cmd = { "C:\\Users\\rcurran\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\omnisharp.exe" },
--   enable_editorconfig_support = true,
--
--   enable_ms_build_load_projects_on_demand = false,
--
--   -- Enables support for roslyn analyzers, code fixes and rulesets.
--   enable_roslyn_analyzers = false,
--
--   -- Specifies whether 'using' directives should be grouped and sorted during
--   -- document formatting.
--   organize_imports_on_format = true,
--
--   -- Enables support for showing unimported types and unimported extension
--   -- methods in completion lists. When committed, the appropriate using
--   -- directive will be added at the top of the current file. This option can
--   -- have a negative impact on initial completion responsiveness,
--   -- particularly for the first few completion sessions after opening a
--   -- solution.
--   enable_import_completion = true,
--
--   -- Specifies whether to include preview versions of the .NET SDK when
--   -- determining which version to use for project loading.
--   sdk_include_prereleases = true,
--
--   -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
--   -- true
--   analyze_open_documents_only = false,
--   on_attach = on_attach,
--   capabilities = capabilities,
--   handlers = {
--     ["textDocument/definition"] = require("omnisharp_extended").handler,
--   },
-- }
--
-- lspconfig.pyright.setup { blabla}

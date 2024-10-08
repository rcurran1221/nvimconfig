local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.csharpier,
  -- b.formatting.sqlfluff.with {
  --   extra_args = { "--dialect", "t-sql" }, -- change to your dialect
  -- },
  b.formatting.gofmt,
  b.formatting.golines,
}

null_ls.setup {
  debug = true,
  sources = sources,
}

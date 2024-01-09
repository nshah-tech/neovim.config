local prettier = require("prettier")

prettier.setup({
  bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})


-- local prettier = {
--   formatCommand = 'prettierd "${INPUT}"',
--   formatStdin = true,
--   env = {
--     string.format('PRETTIERD_DEFAULT_CONFIG=%s', vim.fn.expand('~/.config/nvim/utils/linter-config/.prettierrc.json')),
--   },
-- }

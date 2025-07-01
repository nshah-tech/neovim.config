return {
  {
    "nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      autoformat = false,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      autoformat = false,
      servers = {
        tsserver = {}, -- default settings
      },
      setup = {
        tsserver = function(_, opts)
          require("lspconfig").tsserver.setup(opts)
          return true
        end,
      },
    },
  },
}

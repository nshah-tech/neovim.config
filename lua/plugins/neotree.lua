return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = { position = "right" },
  },
  keys = {
    { "<leader>E", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
    { "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
  },
}

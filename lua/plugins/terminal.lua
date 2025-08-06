return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        position = "float",
      },
    },
    picker = {
      sources = {
        explorer = {
          -- switch the sidebar to the right
          layout = {
            layout = {
              position = "right",
            },
          },
          -- you can preserve or tweak any other defaults here:
          follow_file = true,
          tree = true,
          focus = "list",
        },
      },
    },
  },
}

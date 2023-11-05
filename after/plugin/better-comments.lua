require('better-comment').Setup({
    tags = {
        --// TODO will overwrite
        --! HELPASDKNSAOD
        --[[ {
      name = "TODia",
      fg = "white",
      bg = "#0a7aca",
      bold = true,
      virtual_text = "",
    },
    {
      name = "NEW",
      fg = "white",
      bg = "red",
      bold = false,
      virtual_text = "",
    },

   ]] --
    }
})
-- _ is basiacally /
require('nvim_comment').setup({
    line_mapping = "<C-_>",
    operator_mapping = "<C-_>",
    comment_chunk_text_object = "<C-_>",
    comment_empty = true,
    comment_empty_trim_whitespace = true,
})
-- require('nvim_comment').setup({line_mapping = "<leader>/", operator_mapping = "<leader>/", comment_chunk_text_object = "<leader>/"})

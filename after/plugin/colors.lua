-- require('rose-pine').setup({
--     -- disable_background = true
-- })

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    -- background = { -- :h background
    --     light = "latte",
    --     dark = "mocha",
    -- },
    -- transparent_background = false, -- disables setting the background color.
    -- show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    -- term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
})

function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
  -- vim.cmd.colorscheme "catppuccin"
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()

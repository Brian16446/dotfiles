require("noice").setup({
    -- Configuration here, or leave empty to use defaults
})

require("lualine").setup({
  sections = {
    lualine_x = {
      {
        require("noice").api.statusline.mode.get,
        cond = require("noice").api.statusline.mode.has,
        color = { fg = "#ff9e64" },

      }
    },
  },
})


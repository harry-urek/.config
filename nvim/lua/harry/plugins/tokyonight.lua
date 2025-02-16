return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "moon",
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        },
    },

    config = function(_, opts)
        local tokyo = require("tokyonight")

        tokyo.setup(opts)
        tokyo.load()
    end,
}

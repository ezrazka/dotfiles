return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({ auto_integrations = true })
            vim.cmd.colorscheme("catppuccin-nvim")
        end
    },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "catppuccin/nvim",
        },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = "catppuccin-nvim"
                }
            })
        end
    }
}

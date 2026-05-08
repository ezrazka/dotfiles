return function(use)
    -- Catppuccin
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup({ auto_integrations = true })
            vim.cmd.colorscheme("catppuccin-nvim")
        end
    }

    -- Lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = "catppuccin-nvim"
                }
            })
        end
    }
end

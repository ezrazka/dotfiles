return function(use)
    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
        config = function()
            require("nvim-treesitter.config").setup({
                ensure_installed = { "lua", "c", "cpp", "python", "html", "css", "javascript" },
                highlight = { enable = true },
                indent = { enable = true }
            })
        end
    }
end

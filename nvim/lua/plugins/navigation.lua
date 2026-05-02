return function(use)
    -- Vim Tmux Navigator
    use {
        "christoomey/vim-tmux-navigator"
    }

    -- Oil (command: e)
    use {
        "stevearc/oil.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function()
            require("oil").setup({
                win_options = {
                    number = false,
                    relativenumber = false,
                    winbar = "%{v:lua.require(\"oil\").get_current_dir()}"
                },
                default_file_explorer = true,
                view_options = { show_hidden = true },
                float = { border = "rounded" },
                confirmation = { border = "rounded" },
                progress = { border = "rounded" },
                ssh = { border = "rounded" },
                keymaps_help = { border = "rounded" }
            })

            vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
        end
    }

    -- Telescope (prefix: f)
    use {
        "nvim-telescope/telescope.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Telescope find git files" })
            vim.keymap.set("n", "<leader>fs", function()
                builtin.grep_string({ search = vim.fn.input("Grep string: ") })
            end)
        end
    }

    -- Harpoon (prefix: h)
    use {
        "theprimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu)
            vim.keymap.set("n", "<leader>ha", mark.add_file)

            vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
            vim.keymap.set("n", "<leader>h5", function() ui.nav_file(5) end)
        end
    }
end

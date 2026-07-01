return {
    -- Vim Tmux Navigator
    {
        "christoomey/vim-tmux-navigator"
    },

    -- Oil (command: e)
    {
        "stevearc/oil.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("oil").setup({
                win_options = {
                    number = true,
                    relativenumber = true,
                    winbar = "%{v:lua.require(\"oil\").get_current_dir()}"
                },

                default_file_explorer = true,
                view_options = { show_hidden = true },
                float = { border = "rounded" },
                confirmation = { border = "rounded" },
                progress = { border = "rounded" },
                ssh = { border = "rounded" },
                keymaps_help = { border = "rounded" },

                keymaps = {
                    ["<C-h>"] = {},
                    ["<C-l>"] = {},
                    ["_"] = {},
                    ["<C-s>"] = { "actions.select", opts = { horizontal = true } },
                    ["<C-e>"] = "actions.refresh",
                    ["-"] = { "actions.open_cwd", mode = "n" },
                    ["`"] = { "actions.cd", mode = "n" }
                }
            })

            vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>")
        end
    },

    -- Telescope (prefix: f)
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Telescope find git files" })
            vim.keymap.set("n", "<leader>fs", function()
                builtin.grep_string({ search = vim.fn.input("Grep string: ") })
            end)
        end
    },

    -- Harpoon (prefix: h)
    {
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
}

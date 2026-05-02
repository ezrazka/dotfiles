return function(use)
    -- Fugitive (command: git)
    use {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>git", function() vim.cmd("vertical Git") end)
        end
    }

    -- Gitsigns (prefix: g)
    use {
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },

        config = function()
            require("gitsigns").setup({
                signcolumn = true,
                on_attach = function(bufnr)
                    local gitsigns = require("gitsigns")

                    local function map(mode, lhs, rhs, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, lhs, rhs, opts)
                    end

                    map("n", "<leader>gg", gitsigns.toggle_signs)
                    map("n", "<leader>gp", gitsigns.preview_hunk)
                    map("n", "<leader>gb", function() gitsigns.blame_line({ full = true }) end)

                    map("n", "<leader>gs", gitsigns.stage_hunk)
                    map("n", "<leader>gr", gitsigns.reset_hunk)

                    map("v", "<leader>gs", function()
                        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                    end)
                    map("v", "<leader>gr", function()
                        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                    end)

                    map("n", "<leader>gS", gitsigns.stage_buffer)
                    map("n", "<leader>gR", gitsigns.reset_buffer)

                    map("n", "]c", function()
                        if vim.wo.diff then
                            vim.cmd.normal({"]c", bang = true})
                        else
                            gitsigns.nav_hunk("next")
                        end
                    end)
                    map("n", "[c", function()
                        if vim.wo.diff then
                            vim.cmd.normal({"[c", bang = true})
                        else
                            gitsigns.nav_hunk("prev")
                        end
                    end)

                    map({ "o", "x" }, "ih", gitsigns.select_hunk)
                end
            })
        end
    }
end

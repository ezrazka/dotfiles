return function(use)
    -- LSP
    use {
        "neovim/nvim-lspconfig",
        requires = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path"
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item()
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "path" },
                    { name = "luasnip" }
                }),
                window = {
                    completion = {
                        max_height = 8
                    }
                }
            })

            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "c", "cpp", "objc", "objcpp" },
                callback = function()
                    local root_dir = vim.fs.dirname(
                        vim.fs.find({ "compile_commands.json", ".git" }, { upward = true })[1]
                        or vim.api.nvim_buf_get_name(0)
                    )
                    vim.lsp.start({
                        name = "clangd",
                        cmd = { "/usr/local/opt/llvm/bin/clangd" },
                        filetypes = { "c", "cpp", "objc", "objcpp" },
                        root_dir = root_dir
                    })
                end
            })
        end
    }
end

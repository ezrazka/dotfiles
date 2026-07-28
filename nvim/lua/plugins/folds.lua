return {
    -- Nvim UFO
    "kevinhwang91/nvim-ufo",
    dependencies = {
        "kevinhwang91/promise-async"
    },
    opts = {
        open_fold_hl_timeout = 0,
        provider_selector = function(bufnr, filetype, buftype)
            return { "treesitter", "indent" }
        end
    },
    init = function()
        vim.o.foldcolumn = "0"
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true
    end
}

-- =========================
-- BOOTSTRAPPING LAZY.NVIM
-- =========================

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- =========================
-- REQUIRES
-- =========================

require("core.options")
require("core.keymaps")
require("lazy").setup({
    require("plugins.ui"),
    -- require("plugins.treesitter"),
    require("plugins.navigation"),
    require("plugins.undotree"),
    require("plugins.git"),
    require("plugins.cp"),
    require("plugins.lsp")
})

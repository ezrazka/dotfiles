vim.cmd("packadd packer.nvim")

require("packer").startup(function(use)
    use {
        "wbthomason/packer.nvim"
    }

    require("plugins.ui")(use)
    require("plugins.treesitter")(use)
    require("plugins.navigation")(use)
    require("plugins.undotree")(use)
    require("plugins.git")(use)
    require("plugins.cp")(use)
    require("plugins.lsp")(use)
end)

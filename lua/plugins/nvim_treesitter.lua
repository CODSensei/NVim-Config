return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "bash", "asm", "javascript", "html","xml","typescript","tsx","tmux","sql","rust","regex","python","json","css","java","go","cpp","printf","markdown", "markdown_inline", "gitignore"},
                sync_install = false,
                auto_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
                autotag = {enable = true},
        })
    end
 }
}

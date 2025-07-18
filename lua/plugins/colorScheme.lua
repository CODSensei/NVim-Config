return {
    {
        -- "rose-pine/neovim",
        "Mofiqul/dracula.nvim",
        -- name = "rose-pine", 
        lazy = false,
        priority = 1000,

        -- opts = {
        --     -- custom options here
        --     variant = "main", -- auto, main, moon, or dawn
        --     dark_variant = "main", -- main, moon, or dawn
        --     dim_inactive_windows = true,
        --     extend_background_behind_borders = true,
        --
        --     enable = {
        --         terminal = true,
        --         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        --         migrations = true, -- Handle deprecated options automatically
        --     },
        --
        --     styles = {
        --         bold = true,
        --         italic = true,
        --         transparency = false,
        --     },
        -- },
        opts = { colorscheme = "dracula",},
        config = function(_, opts)
            -- require("rose-pine").setup(opts)
            require("dracula").setup(opts)
            -- vim.cmd ("colorscheme rose-pine")
            vim.cmd ("colorscheme dracula")
        end,
    }
}

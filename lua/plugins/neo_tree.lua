return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                hijack_netrw = true,
                auto_reload_on_write = true,})
        end
}}

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        -- Set a vim motion to <Shift>m to mark a file with harpoon
        vim.keymap.set("n", "<s-m>", function() harpoon:list():add() end, {desc = "Harpoon Mark File"})
        -- Set a vim motion to the tab key to open the harpoon menu to easily navigate frequented files
        vim.keymap.set("n", "<TAB>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon Toggle Menu"})
    end
}

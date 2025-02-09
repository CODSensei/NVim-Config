return {
    { -- Useful plugin to show you pending keybinds.
        'folke/which-key.nvim',
        event = 'VimEnter', -- Sets the loading event to 'VimEnter'
        opts = {

            triggers = {
                { "<auto>", mode = "nso" },
            },
            -- delay between pressing a key and opening which-key (milliseconds)
            -- this setting is independent of vim.opt.timeoutlen
            -- delay = 1000,
            -- icons = {
            --     -- set icon mappings to true if you have a Nerd Font
            --     mappings = vim.g.have_nerd_font,
            --     -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
            --     -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
            --     keys = vim.g.have_nerd_font and {} or {
            --         Up = '<Up> ',
            --         Down = '<Down> ',
            --         Left = '<Left> ',
            --         Right = '<Right> ',
            --         C = '<C-…> ',
            --         M = '<M-…> ',
            --         D = '<D-…> ',
            --         S = '<S-…> ',
            --         CR = '<CR> ',
            --         Esc = '<Esc> ',
            --         ScrollWheelDown = '<ScrollWheelDown> ',
            --         ScrollWheelUp = '<ScrollWheelUp> ',
            --         NL = '<NL> ',
            --         BS = '<BS> ',
            --         Space = '<Space> ',
            --         Tab = '<Tab> ',
            --         F1 = '<F1>',
            --         F2 = '<F2>',
            --         F3 = '<F3>',
            --         F4 = '<F4>',
            --         F5 = '<F5>',
            --         F6 = '<F6>',
            --         F7 = '<F7>',
            --         F8 = '<F8>',
            --         F9 = '<F9>',
            --         F10 = '<F10>',
            --         F11 = '<F11>',
            --         F12 = '<F12>',
            --     },
            -- },
            -- Ensure which-key does NOT activate in Visual Mode
            -- triggers = {
            --     { "<leader>", mode = { "n", "v" } },
            -- },

      -- Document existing key chains
--       spec = {
--         { '<leader>/', group = 'Comments' },
--         { '<leader>c', group = '[C]ode', mode = { 'n'  } },
--         { '<leader>d', group = '[D]ebug' },
--         { '<leader>e', group = '[E]xplorer' },
--         { '<leader>f', group = '[F]ind' },
--         { '<leader>g', group = '[G]it' },
--         { '<leader>J', group = '[J]ava' },
--         { '<leader>w', group = '[W]indow', mode = { 'n' } },
--       },
--             plugins = {
--                     marks = true,       -- Show marks
--                     registers = true,   -- Show registers
--                     spelling = { enabled = true }, -- Disable spelling suggestions
--                     presets = {
--                         operators = true, -- Don't show operators
--                         motions = true,   -- Don't show motion bindings
--                         text_objects = true, -- Don't show text objects
--                         windows = true,   -- Don't show window bindings
--                         nav = true,       -- Don't show navigation bindings
--                         z = true,         -- Don't show 'z' bindings
--                         g = true          -- Don't show 'g' bindings
--                     },
--                 },
}
}}

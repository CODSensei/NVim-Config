return {{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },    

    config = function()
        local telescope = require('telescope')
        telescope.setup()

        require('config.keymaps').setup()

    end
},
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- get access to telescopes navigation functions
            local actions = require("telescope.actions")

            require("telescope").setup({
                -- use ui-select dropdown as our ui
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                },
                -- set keymappings to navigate through items in the telescope io
                mappings = {
                    i = {
                        -- use <cltr> + n to go to the next option
                        ["<C-n>"] = actions.cycle_history_next,
                        -- use <cltr> + p to go to the previous option
                        ["<C-p>"] = actions.cycle_history_prev,
                        -- use <cltr> + j to go to the next preview
                        ["<C-j>"] = actions.move_selection_next,
                        -- use <cltr> + k to go to the previous preview
                        ["<C-k>"] = actions.move_selection_previous,
                    }
                },
                -- load the ui-select extension
                require("telescope").load_extension("ui-select")
            })
        end
    }
}

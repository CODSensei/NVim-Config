-- Set our leader keybinding to space
-- Anywhere you see <leader> in a keymapping specifies the space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove search highlights after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Exit Vim's terminal mode
-- vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" }, { noremap = true, silent = true })
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" }, { noremap = true, silent = true })
-- vim.keymap.set("t", "<C-d>", "<C-\\><C-n>", { desc = "Exit terminal mode" }, { noremap = true, silent = true })

-- OPTIONAL: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Easily split windows
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "[W]indow Split [V]ertical" })
vim.keymap.set("n", "<leader>wh", ":split<cr>", { desc = "[W]indow Split [H]orizontal" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })
vim.keymap.set("v", "<C-I>", "gg=G", { desc = "Indent right in visual mode" })

-- Moving back a file
-- vim.keymap.set("n","<leader>bb",vim.cmd.Ex)

-- Yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y') -- yank motion
vim.keymap.set({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d') -- delete motion
vim.keymap.set({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p')  -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P')  -- paste before cursor

-- NeoTree keymaps
-- vim.keymap.set("n","<C-p>",":Neotree filesystem reveal left<CR>",{})

-- Control + p make neotree open and close
vim.keymap.set("n", "<C-p>", function()
    local neo_tree = require("neo-tree.command")
    local state = require("neo-tree.sources.manager").get_state("filesystem")

    if state and state.winid then
        -- if neo-tree is open, close it and return focus
        vim.cmd("Neotree close")
    else
        -- if neo-tree is closed, open it and focus
        vim.cmd("Neotree focus")
    end
end, { noremap = true, silent = true })

-- Control + sf as in show left but focus right make neotree show 
vim.keymap.set("n", "<C-s><C-f>", function()
    vim.cmd("Neotree show")
end, { noremap = true, silent = true })

-- Control + fs as in focus left but show right make neotree focus
vim.keymap.set("n", "<C-f><C-s>", function()
    vim.cmd("Neotree focus")
end, { noremap = true, silent = true })

--LSP Keymaps
vim.keymap.set('n','<leader>',vim.lsp.buf.hover, {})

--telescope keymaps
local M = {}

M.setup = function() 
    local builtin = require('telescope.builtin')

    vim.keymap.set("n","<leader>gf",builtin.git_files, {})
    vim.keymap.set("n","<leader>fs", function() 
        builtin.grep_string({ search = vim.fn.input("Grep > ")})
    end)
    -- set a vim motion to <Space> + f + f to search for files by their names
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "[F]ind [F]iles"})
    -- set a vim motion to <Space> + f + g to search for files based on the text inside of them
    vim.keymap.set('n', '<leader>lg', builtin.live_grep, {desc = "[F]ind by [G]rep"})
    -- set a vim motion to <Space> + f + d to search for Code Diagnostics in the current project
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
    -- set a vim motion to <Space> + f + r to resume the previous search
    vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]inder [R]esume' })
    -- set a vim motion to <Space> + f + . to search for Recent Files
    vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
    -- set a vim motion to <Space> + f + b to search Open Buffers
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind Existing [B]uffers' })
end

return M


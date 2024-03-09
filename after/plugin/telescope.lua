local builtin = require('telescope.builtin')
local telescope = require('telescope')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>pws', function()
    local word = vim.fn.expand("<cword>")
    builtin.grep_string({ search = word })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})


vim.api.nvim_set_keymap('n', '<leader>fb', ":Telescope file_browser<CR>", { noremap = true })


telescope.setup({
    extensions = {
        file_browser = {
            theme = "ivy",
        }
    },
    defaults = {
        layout_config = {
            prompt_position = "top",
            horizontal = {
                mirror = false,
            },
            vertical = {
                mirror = false,
            },
        },
    }
})
require("telescope").load_extension "file_browser"

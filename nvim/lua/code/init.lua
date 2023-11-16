require("code.remap")
require("code.set")
require("code.prettier")

-- Keybinding
vim.api.nvim_set_keymap('n', '<leader>F', '<Cmd>Format<CR>', { noremap = true, silent = true })

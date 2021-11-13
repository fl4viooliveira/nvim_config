local keymap = vim.api.nvim_set_keymap 
keymap('n', '<leader>ff', ':Telescope find_files<CR>', {})
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', {})
keymap('n', '<leader>fb', ':Telescope buffers<CR>', {})
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', {})

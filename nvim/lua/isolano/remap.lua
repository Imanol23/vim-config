local keymap = function(mode, shortcut, command) 
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ge", vim.cmd.Ex)

keymap('n', '<leader>f', ':Telescope find_files<cr>')
keymap('n', '<leader>s', ':Telescope live_grep<cr>')
keymap('n', '<leader>b', ':Telescope buffers<cr>')


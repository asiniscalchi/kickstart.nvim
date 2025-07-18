vim.keymap.set('n', '<leader>x', function()
  local height = math.floor(vim.o.lines * 0.3)
  vim.cmd(height .. 'split | terminal')
  vim.cmd 'setlocal winfixwidth'
end, { noremap = true, silent = true, desc = 'Open terminal' })

vim.keymap.set('n', '<leader>h', function()
  local height = math.floor(vim.o.lines * 0.3)
  vim.cmd(height .. 'split | terminal')
  vim.cmd 'setlocal winfixwidth'
  vim.cmd 'startinsert'
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>v', function()
  local total_cols = vim.o.columns -- Total number of columns in the window
  local width = math.floor(total_cols * 0.25) -- 30% of the total width
  vim.cmd 'botright vsplit' -- Create the vertical split
  vim.cmd('vertical resize ' .. width) -- Resize to 30% of total width
  vim.cmd 'setlocal winfixwidth'
  vim.cmd 'terminal aichat' -- run the executable
  vim.cmd 'startinsert' -- enter insert mode
end, { noremap = true, silent = true })

vim.api.nvim_create_autocmd('BufWritePre', {
  command = 'lua vim.lsp.buf.formatting_sync(nil, 1000)',
  pattern = '*.cpp,*.css,*.html,*.go,*.js,*.python,*.yaml,*.rs'
})

vim.api.nvim_create_autocmd(
  'InsertEnter',
  { command = 'set norelativenumber', pattern = '*' }
)
vim.api.nvim_create_autocmd(
  'InsertLeave',
  { command = 'set relativenumber', pattern = '*' }
)

vim.api.nvim_create_autocmd(
  'TermOpen',
  { command = 'startinsert', pattern = '*' }
)

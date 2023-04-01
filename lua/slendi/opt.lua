vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.expandtab = true

vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.clipboard = 'unnamedplus'
vim.opt.ignorecase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.guifont = { "DroidSansMono Nerd Font Mono", ":h13" }

vim.g.netrw_style = 'tree'

vim.opt.shell = 'pwsh.exe -nologo'
vim.opt.shellcmdflag = '-NoLogo -Command'
vim.opt.shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.g.shellquote=''
vim.g.shellxquote=''

vim.cmd[[
set shellquote=
set shellxquote=
set shellpipe=\| shellredir=>
]]

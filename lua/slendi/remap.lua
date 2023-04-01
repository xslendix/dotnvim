vim.g.mapleader = ' '

vim.keymap.set('n', '<Leader>j', ':bp<CR>', { silent = true })
vim.keymap.set('n', '<Leader>k', ':bn<CR>', { silent = true })
vim.keymap.set('n', '<Leader>q', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<Leader>x', vim.diagnostic.open_float)
vim.keymap.set('n', '<Leader>/', ':let @/ = ""<CR>', { silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true })

-- Escape term
vim.keymap.set('t', '<Leader><Esc>', '<C-\\><C-n>', { silent = true })

-- Yank the whole thing baby!
vim.keymap.set('n', '<Leader>y', ':%y<CR>')

-- Netrw my beloved
vim.keymap.set('n', '<Leader>d', ':Ex<CR>')

-- Blazingly fast buffer navigation!
vim.keymap.set({'n', 'i'}, '<C-J>', ':bnext<CR>')
vim.keymap.set({'n', 'i'}, '<C-K>', ':bprev<CR>')

vim.opt.mouse = 'a'


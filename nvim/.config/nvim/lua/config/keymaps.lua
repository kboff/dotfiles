vim.keymap.set({ 'n', 'i' }, '<C-s>', '<cmd>w<CR>', { desc = '保存文件' })
vim.keymap.set({ 'n', 'i' }, '<C-q>', '<cmd>q!<CR>', { desc = '强制退出' })


vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>', { desc = 'CD to current file dir' })
vim.keymap.set('n', '<leader>cD', ':cd %:p:h:h<CR>', { desc = 'CD to parent dir' })

vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

--vim.keymap.set({ "n", "x", "o" }, "<S-H>", "^", { desc = "Start of line" })
--vim.keymap.set({ "n", "x", "o" }, "<S-L>", "$", { desc = "End of line" })
vim.keymap.set('n', '<leader>cd', ':lcd %:h<CR>', { desc = "Local CD to current file directory" })
vim.keymap.set('n', '<C-l>', '<cmd>nohlsearch<CR>')  --清除搜索高亮
vim.keymap.set('n', '<C-/>', '<Cmd>normal gcc<CR>')  -- 注释当前行
vim.keymap.set('v', '<C-/>', '<Cmd>normal gcc<CR>')   -- 注释选中区域

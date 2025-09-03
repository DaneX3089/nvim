-- vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", { desc = "Toggle Neo-tree on left" })


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })


-- CMAKE
vim.keymap.set("n", "<leader>r", ":CMakeRun<CR>", { desc = "Run CMake target" })


vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Show diagnostics" })


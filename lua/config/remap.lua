-- vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-n>", ":Neotree toggle left<CR>", { desc = "Toggle Neo-tree on left" })
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")

vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { desc = "Open netrw file explorer" })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })


-- CMAKE
vim.keymap.set("n", "<leader>r", ":CMakeRun<CR>", { desc = "Run CMake target" })


vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Show diagnostics" })





-- Easier split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })

-- Open splits quickly
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

-- Open file in vertical split
vim.keymap.set("n", "<leader>fo", ":vsplit | Telescope find_files<CR>", { desc = "Find file in split" })


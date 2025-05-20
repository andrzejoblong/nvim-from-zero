local map = vim.keymap.set
map("n", "<C-n>", ":NvimTreeToggle<CR>")
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>tt", ":lua require('neotest').run.run()<CR>")

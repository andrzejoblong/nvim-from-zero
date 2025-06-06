local map = vim.keymap.set

map("n", "<C-n>", ":NvimTreeToggle<CR>")
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")

-- Neotest:
map("n", "<leader>tt", ":lua require('neotest').run.run()<CR>")
map("n", "<leader>ts", ":lua require('neotest').summary.toggle()<CR>")
map("n", "<leader>to", ":lua require('neotest').output.open({ enter = true })<CR>")
map("n", "<leader>tO", ":lua require('neotest').output_panel.toggle()<CR>")
map("n", "<leader>tp", ":lua require('telescope.builtin').live_grep({ search_dirs = { vim.fn.expand('%:p') }, default_text = 'def test_' })<CR>")
 -- LSP (Language Server Protocol) keymaps
map('n', '<leader>r', vim.lsp.buf.rename, { desc = "Rename symbol under cursor" })
map('n', '<leader>f', vim.lsp.buf.format, { desc = "Format current buffer" })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code action" })
map('n', '<leader>gd', vim.lsp.buf.definition, { desc = "Go to definition" })  
map('n', '<leader>gr', vim.lsp.buf.references, { desc = "Go to references" })   
map('n', '<leader>gi', vim.lsp.buf.implementation, { desc = "Go to implementation" }) 
map('n', '<leader>gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
map('n', '<leader>gT', vim.lsp.buf.type_definition, { desc = "Go to type definition" }) 
map('n', '<leader>gh', vim.lsp.buf.hover, { desc = "Hover documentation" }) 
-- DAP (Debug Adapter Protocol) keymaps
map("n", "<leader>da", function() require("dap").continue() end, { desc = "Continue Debugging" })
map("n", "<leader>de", function() require("dap").run_to_cursor() end, { desc = "Run to Cursor" })
map("n", "<leader>dd", function() require("dap").step_over() end, { desc = "Step Over" })
map("n", "<leader>df", function() require("dap").step_into() end, { desc = "Step Into" })
map("n", "<leader>dg", function() require("dap").step_out() end, { desc = "Step Out" })
map("n", "<leader>ds", function() require("dap").pause() end, { desc = "Pause Debugging" })
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Toggle DAP UI" })
map("n", "<leader>dv", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
map("n", "<leader>dt", function() require("dap").terminate() end, { desc = "Terminate Debugging" })
map('n', '<leader>dr', function() require('dap').repl.open() end, { desc = "Open DAP REPL" })
-- Terminal keymaps
map('n', '<leader>e', ':w<CR>: split | terminal poetry run python %<CR>')

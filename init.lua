require("settings")
require("keymaps")
require("plugins")
require("lsp")
require("config.nvimtree")
require("nvim-web-devicons").setup()
require("neotest").setup({
  adapters = {
    require("neotest-python")({
      python = "python",
       extra_args = {"--rootdir", vim.fn.getcwd()},
       runner = "pytest"
    }),
  },
})
local dap = require("dap")
dap.adapters.python = {
  type = "executable",
  command = "python",
  args = { "-m", "debugpy.adapter" }
}
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",  
    cwd = "${workspaceFolder}",
    env = {
      PYTHONPATH = "${workspaceFolder}"
    },
    justMyCode = false
  }
}
require("dapui").setup()

vim.cmd [[ set statusline+=%{FugitiveHead()} ]]

vim.opt.number = true
vim.opt.relativenumber = false

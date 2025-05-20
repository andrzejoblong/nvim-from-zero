require("settings")
require("keymaps")
require("plugins")
require("lsp")
require("config.nvimtree")
require("nvim-web-devicons").setup()
require("neotest").setup({
  adapters = {
    require("neotest-python")({
      runner = "pytest",
      dap = { justMyCode = false },
    }),
  },
})


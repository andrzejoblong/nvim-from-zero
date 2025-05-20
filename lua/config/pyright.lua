local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.pyright.setup({
  root_dir = util.find_git_ancestor or vim.fn.getcwd(),
  settings = {
    python = {
      pythonPath = function()
        local handle = io.popen("poetry env info -p")
        if handle then
          local result = handle:read("*a")
          handle:close()
          local venv = result:gsub("%s+", "")
          return venv .. "/bin/python"
        end
      end
    }
  }
})

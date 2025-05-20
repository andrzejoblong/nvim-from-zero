require("neotest").setup({
  adapters = {
    require("neotest-python")({
      python = function()
        -- get project root (e.g., via lsp or current working dir)
        local cwd = vim.fn.getcwd()
        -- call Poetry to get venv path
        local handle = io.popen("poetry env info -p")
        if handle then
          local result = handle:read("*a")
          handle:close()
          local venv_path = result:gsub("%s+", "") -- trim newlines
          return venv_path .. "/bin/python"
        end
      end,
    }),
  },
})

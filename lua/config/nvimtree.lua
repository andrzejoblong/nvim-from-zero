require("nvim-web-devicons").setup({ default = true })

require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
    preserve_window_proportions = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
  on_attach = function(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings + your custom ones
    api.config.mappings.default_on_attach(bufnr)

    -- custom splits
    vim.keymap.set('n', 's', api.node.open.horizontal, opts('Open in horizontal split'))
    vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open in vertical split'))
    vim.keymap.set('n', 't', api.node.open.tab, opts('Open in new tab'))
  end
})

-- Auto-open the tree when launching with a directory
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    if vim.fn.isdirectory(vim.fn.argv()[1] or "") == 1 then
      require("nvim-tree.api").tree.open()
    end
  end
})


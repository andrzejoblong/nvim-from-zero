# Plugins I Use in Neovim

Neovim is great on its own — but plugins make it powerful.

I try to keep my setup simple, clean, and useful for daily work.  
Below are the plugins I currently use, and why I like them.

---

## 📦 Plugin Manager – `packer.nvim`

Before everything else, I need a way to install and manage plugins.  
I use [packer.nvim](https://github.com/wbthomason/packer.nvim) – it's stable, easy to use, and fast.

---

## 🧱 UI and Navigation

- **`nvim-tree.lua` + `nvim-web-devicons`**  
  A file explorer on the left. Helps me quickly move between files.  
  The icons make it more readable.

- **`lualine.nvim`**  
  A beautiful statusline that shows the file name, git branch, mode, and more.

- **`telescope.nvim` + `plenary.nvim`**  
  My favorite plugin. Lets me search files, buffers, git commits, and more — all from one fuzzy finder.

---

## 🌈 Syntax Highlighting & Treesitter

- **`nvim-treesitter`**  
  Better syntax highlighting and structure understanding.  
  It makes reading code much easier.

---

## 🧠 Autocompletion and LSP

- **`nvim-lspconfig`**  
  Connects Neovim with language servers (like Pyright for Python).

- **`nvim-cmp`, `cmp-nvim-lsp`, `LuaSnip`, `cmp_luasnip`**  
  These plugins give me autocomplete, suggestions, and code snippets.

---

## ✅ Testing

- **`neotest` + `neotest-python` + `nvim-nio`**  
  I run Pytest from inside Neovim. It shows test results in the editor.  
  I’m still exploring this setup, but it already saves me time.

---

## 🔍 Code Quality

- **`n[48;43;168;1376;2352tone-ls.nvim`**  
  I use this for formatters and linters.  
  It helps keep my Python code clean without switching tools.

---

## 🔧 Git Integration

- **`vim-fugitive`**  
  A classic git plugin. I can do commits, diffs, and pushes without leaving Neovim.

- **`gitsigns.nvim`**  
  Shows git changes (added/removed lines) next to the code. Very useful.

---

## 🤖 Copilot

- **`github/copilot.vim`**  
  GitHub Copilot suggests code while I type. I don’t use it all the time, but it's nice to have.

---

## 🧪 My Daily Flow

I can now:
- open Neovim in a project
- explore files with `nvim-tree`
- search with `telescope`
- run tests with `neotest`
- check git status with `gitsigns` or `:Git`
- write with full autocomplete and snippet support

And I do it all **without touching the mouse**.

---

## 🧘 Final Thoughts

This is not a perfect setup — it's just what works for me **right now**.  
It’s simple enough to not get lost, and powerful enough to do real work.

If you're starting your own journey with Neovim, I hope this list helps.

— Andrzej 🐢


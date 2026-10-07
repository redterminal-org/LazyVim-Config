-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.opt
o.ruler = true
-- o.pastetoggle = '<f5>'
o.laststatus = 2
o.number = true
o.relativenumber = true
o.termguicolors = true
o.hlsearch = true
o.cursorline = true
o.hidden = true
-- o.nomodeline = true
--o.tabstop = 2
--o.shiftwidth = 2
--o.softtabstop = 4
o.expandtab = true
o.viminfofile = ""
o.splitbelow = true
o.splitright = true
o.cc = "80"

o.clipboard = "unnamed"
o.mouse = "a"
o.signcolumn = "yes"
o.wrap = true

o.completeopt = "menu,menuone,noselect"

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Open all folds
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldtext = ""
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldnestmax = 4

-- disable format on save globally
vim.g.autoformat = false

-- disable output of corresponding quotes and brackets
vim.g.minipairs_disable = true

-- configure lsp 'lua_ls' for LazyVim
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

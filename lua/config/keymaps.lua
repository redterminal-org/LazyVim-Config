-- Remap Notification
vim.keymap.set("n", "<Leader>N", "<cmd>Noice history<CR>", { desc = "Notifications" })
--
-- Switch buffers with Control-P and Control-N
-- Close buffer with Control-Q
vim.api.nvim_set_keymap("n", "<C-P>", [[:bprev<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<C-N>", [[:bnext<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Q>", [[:bdelete<CR>]], { noremap = true })

-- Telescope Shortcuts
vim.api.nvim_set_keymap("n", "<Leader>tg", [[<cmd>Telescope live_grep<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>tb", [[<cmd>Telescope buffers<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>th", [[<cmd>Telescope help_tags<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>tf", [[<cmd>Telescope find_files<CR>]], { noremap = true })

-- Map Control + Arrow keys to move between windows
vim.api.nvim_set_keymap("n", "<C-Up>", [[<C-W><Up>]], {})
vim.api.nvim_set_keymap("n", "<C-Down>", [[<C-W><Down>]], {})
vim.api.nvim_set_keymap("n", "<C-Left>", [[<C-W><Left>]], {})
vim.api.nvim_set_keymap("n", "<C-Right>", [[<C-W><Right>]], {})

-- Spell Checker german and english
vim.api.nvim_set_keymap("n", "<Leader>kd", [[:setlocal spell! spelllang=de_de<CR>]], {})
vim.api.nvim_set_keymap("n", "<Leader>ke", [[:setlocal spell! spelllang=en_us<CR>]], {})
vim.api.nvim_set_keymap("n", "<Leader>kk", [[:setlocal nospell!<CR>]], {})

-- clear highlight
vim.api.nvim_set_keymap("n", "<Leader>h", [[:nohl<CR>]], {})

-- Goyo key
vim.api.nvim_set_keymap("n", "<Leader>g", [[<cmd>Goyo<CR>]], {})

-- set UltiSnippetExpandTrigger
vim.keymap.set("i", "<A-s>", [[<C-R>=UltiSnips#ExpandSnippet()<CR>]], {})
-- vim.keymap.del("i", "<Tab>")

-- format all open Buffers
vim.keymap.set("n", "<leader>F", [[<cmd>bufdo lua vim.lsp.buf.format({async = false, timeout = 10000})<CR>]], {})

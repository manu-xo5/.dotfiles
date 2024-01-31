-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true, noremap = true }

--Map leader keys
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.b.maplocalleader = ";"

------------- Normal Mode -------------
-- Better move around
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Better Window Navigation
-- Window Keymap
keymap("n", "<C-q>", "<C-w>q", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Buffer keymap
keymap("n", "<C-H>", "<C-W><C-H>", opts)
keymap("n", "<C-J>", "<C-W><C-J>", opts)
keymap("n", "<C-K>", "<C-W><C-K>", opts)
keymap("n", "<C-L>", "<C-W><C-L>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", vim.cmd.nohlsearch, opts)
keymap("n", "<leader>z", ":Telescope buffers<CR>", opts)

-- Netrw
vim.keymap.set("n", "<leader>.", vim.cmd.Ex, { silent = true, noremap = true })

------------- Visual Mode -------------
-- Stay in indent mode
keymap("x", "<", "<gv", opts)
keymap("x", ">", ">gv", opts)

---- emacs ----
keymap("i", "<C-c>", "<Nop>", { noremap = true, silent = true, nowait = true })

---- terminal ----
keymap("t", "<Esc>", "<c-\\><c-n>")
keymap("n", "<leader>tt", ":tab sb term<CR>")
keymap("n", "<leader>tv", ":vs<CR>:b term<CR>")

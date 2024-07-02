local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",


-- Windows
-- navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<A-k>", "<C-w>K", opts)
keymap("n", "<A-l>", "<C-w>L", opts)

-- Resize 
-- n narrower
-- w wider
-- the direction is absolute. So if the focus is at the right, Ctrl-left
-- is actually reducing it which is against basic instinct.
keymap("n", "<A-n>", ":vertical resize -2<CR>", opts)
keymap("n", "<A-w>", ":vertical resize +2<CR>", opts)

-- Rustfmt
keymap("n", "<leader>r", "<cmd>RustFmt<cr>", opts)

-- clang-format
keymap("n", "<leader>k", ":%!clang-format<cr>", opts)

-- Left file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Navigate buffers
-- keymap("n", "<C-n>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h>", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j>", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k>", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l>", term_opts)


-- Shorten function name

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal_mode = "n",
-- insert_mode = "i",
-- visual_mode = "v",
-- visual_block_mode = "x",
-- term_mode = "t",
-- command_mode = "c",


-- Windows
-- navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize 
-- n narrower
-- w wider
-- the direction is absolute. So if the focus is at the right, Ctrl-left
-- is actually reducing it which is against basic instinct.
keymap("n", "<C-n>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-f>", ":vertical resize +2<CR>", opts)

-- Rustfmt
keymap("n", "<leader>r", "<cmd>RustFmt<cr>", opts)

-- clang-format
keymap("n", "<leader>k", ":%!clang-format<cr>", opts)

-- Left file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Navigate buffers
-- keymap("n", "<C-n>", ":bnext<CR>", opts)
keymap("n", "<C-p>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("v", "H", "<gv", opts)
keymap("v", "L", ">gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h>", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j>", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k>", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l>", term_opts)


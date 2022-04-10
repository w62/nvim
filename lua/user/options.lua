-- :help options
local options = {
	backup = false,
	clipboard = "unnamedplus",
	cmdheight = 2,
	completeopt = { "menuone", "noselect" },
	conceallevel = 0,
	fileencoding = "utf=8",
	ignorecase = true,
	mouse = "a",
	pumheight = 10,
	showmode = false,
	showtabline = 2,
	smartcase = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	termguicolors = true,
	timeoutlen = 1000,
	undofile = true,
	writebackup = false,
	expandtab = false,
	shiftwidth = 4,
	tabstop = 4,
	cursorline = true,
	number = true,
	relativenumber = true,
	numberwidth = 4,
	signcolumn = "yes",
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8,
	guifont = "monospace:h17",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set colorcolumn=81"
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+==]]
vim.cmd [[set formatoptions-=cro]]
vim.cmd [[set spell spelllang=en_us]]

-- let g:airline#extensions
-- For details, please refer to here:
-- https://www.youtube.com/watch?v=GOCVCn5tlmo&t=902s
--

vim.api.nvim_command([[
    augroup FileTest
    autocmd BufRead *.rs :echo 'hello Rust'
    augroup END
]])

-- vim.api.nvim_create_autocmd seems not working until 0.7
--[[
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "lua", "txt" },
	callback = function()
		vim.schedule(function()
			print("Hey, we got called")
		end)
	end,
})
]]--

local options = {
	number = true,
	relativenumber = true,
	fileencoding = "utf-8",
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set colorcolumn=81"
vim.cmd "colorscheme torte"

local options = {
	backup = false,
	clipboard = "unnamedplus",
	fileencoding = "utf-8",
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	undofile = false,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 6,
	number = true,
	relativenumber = true,
	signcolumn = "number",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

--vim.cmd("highlight DiagnosticWarn guifg=#E5C07B guibg=#4E4942 gui=bold")

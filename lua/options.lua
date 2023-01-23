local options = {
	backup = false,
	clipboard = "unnamedplus",
	fileencoding = "utf-8",
	smartindent = true,
	splitbelow = true,
	splitright = true,
	swapfile = false,
	undofile = true,
	writebackup = false,
	expandtab = true,
	shiftwidth = 2,
	tabstop = 6,	
      number = true,
      signcolumn = "no",
}

for k, v in pairs(options) do 
	vim.opt[k] = v
end

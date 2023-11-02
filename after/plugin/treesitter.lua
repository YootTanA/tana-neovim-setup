local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	print("treesitter is not ready for work")
	return
end

vim.opt.runtimepath:append("/home/oat/.local/share/nvim/site/parsers/parser/")

treesitter.setup({
	ignore_install = { "help" },
	parser_install_dir = "/home/oat/.local/share/nvim/site/parsers/parser/",
	autotag = {
		enable = true,
	},
	sync_install = false,
	auto_install = false,
	highlight = {
		-- `false` will disable the whole extension
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

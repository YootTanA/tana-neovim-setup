local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
	print("lsp config is not ready for work")
	return
end

-- lspconfig.gopls.setup{
--   on_attach = require'completion'.on_attach;
--   settings = { gopls =  {
--     buildFlags =  {"-tags=speech"}
--   }
-- }

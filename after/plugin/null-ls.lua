local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  print("null-ls is not ready for work")
  return
end

local sources = {
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.formatting.gofmt,
  null_ls.builtins.formatting.goimports,
  null_ls.builtins.formatting.prettier.with({
    filetypes = {
      "go",
      "html",
      "css",
      "yaml",
      "markdown",
      "json",
      "lua",
    },
  }),
}

local on_attach = function(client)
  if client.server_capabilities.documentFormattingProvider then
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
    vim.cmd("autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()")
    vim.cmd("autocmd BufWritePre *.go :silent! lua require('go.format').goimport()")
  end
end

null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = on_attach,
})

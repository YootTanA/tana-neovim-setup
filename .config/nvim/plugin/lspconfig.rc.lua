local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)

  -- Go language formatting
  vim.api.nvim_command [[autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()]]
  vim.api.nvim_command [[autocmd BufWritePre *.go :silent! lua require('go.format').goimport()]]

  -- formatting
  if client.server_capabilities.documentFormattingProvimder then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]

    vim.api.nvim_command [[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {
    "typescript",
    "typescriptreact",
    "typescript.tsx"
  },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },

      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      }
    }
  }
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local util = require "lspconfig/util"
nvim_lsp.gopls.setup{
	on_attach = on_attach,
	cmd = {'/Users/oat/go/bin/gopls', "serve"},
  filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
      gopls = {
        analyses = {
          unusedparams = true,
        },
        staticcheck = true,
      },
    },
	--capabilities = capabilities,
	--    settings = {
	--      gopls = {
	--	      experimentalPostfixCompletions = true,
	--	      analyses = {
	--	        unusedparams = true,
	--	        shadow = true,
	--	     },
	--	     staticcheck = true,
	--	    },
	--    },
}


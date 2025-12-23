-- lsp config
vim.lsp.config("gopls", {
       
	-- Command and arguments to start the server.
  cmd = { 'gopls' },

	-- Filetypes to automatically attach to.
  filetypes = { 'go' },

  settings = {
    gopls = {
      gofumpt = true,
      staticcheck = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
    },
  },
})

vim.lsp.enable('gopls')

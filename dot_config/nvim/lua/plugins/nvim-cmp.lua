return  {
	"hrsh7th/nvim-cmp",
  dependencies = {
		"hrsh7th/cmp-nvim-lsp",
     "hrsh7th/cmp-buffer",
     "L3MON4D3/LuaSnip",
	 },
   config = function()
		 local cmp = require("cmp")

		 cmp.setup({
			 mapping = cmp.mapping.preset.insert({
				 ["<C-Space>"] = cmp.mapping.complete(),
				 ["<CR>"] = cmp.mapping.confirm({ select = true }),
			 }),
			 sources = {
				 { name = "nvim_lsp" },
				 { name = "buffer" },
			 },
		 })
	 end,
 }

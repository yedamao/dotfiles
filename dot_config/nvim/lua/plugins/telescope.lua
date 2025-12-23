return {
  'nvim-telescope/telescope.nvim',
	tag = '0.1.5',
	lazy = false,
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
  }
}

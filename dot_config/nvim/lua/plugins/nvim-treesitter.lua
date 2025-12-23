return {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0", 
    lazy = false,
    build = ":TSUpdate",
    config = function()
    require("nvim-treesitter.configs").setup({
      -- Enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- Enable indentation
      indent = {
        enable = true,
      },
      -- List of languages to install and enable
      ensure_installed = { "go", "gomod", "gowork", "lua", "vim" },
      -- Install parsers on start
      auto_install = true,
    })
  end,
}

return {
  "fatih/vim-go",
  ft = "go", -- This will lazy load the plugin for Go file types
  build = ":GoInstallBinaries", -- This runs the command after installation
}

return {
  -- Slime (REPL integration)
  {
    "jpalardy/vim-slime",
    -- Configuration is applied when the plugin is loaded
    config = function()
      -- Set the target to the Neovim terminal or tmux/screen
      vim.g.slime_target = "tmux"
      -- Optional: enable bracketed paste for multi-line code (works well with Python, Julia)
      vim.g.slime_bracketed_paste = 1
      -- Optional: define cell delimiters if you use a notebook style
      vim.g.slime_cell_delimiter = "# %%"
			vim.g.slime_default_config = {
				socket_name = "default",
				target_pane = "{last}", -- Or use ":.1" for specific pane
			}
    end,
    -- Map keys to load the plugin on demand (lazy loading)
    keys = {
      { "<leader>rc", "<cmd>SlimeConfig<cr>", desc = "Slime Config" },
      { "<leader>rr", "<Plug>SlimeSendCell<BAR>/^# %%<CR>", desc = "Slime Send Cell" },
      { "<c-c><c-c>", "<Plug>SlimeRegionSend", mode = { "n", "x" }, desc = "Send Region/Paragraph to REPL" },
    },
  },
}


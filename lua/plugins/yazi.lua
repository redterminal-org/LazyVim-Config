-- Plugin configuration for yazi (configured via Nix)
return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    {
      "<leader>r",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open Yazi",
    },
  },
  opts = {
    open_for_directories = false,
    open_multiple_tabs = false,
    config_home = vim.fn.fnamemodify(vim.fn.stdpath("config"), ":h")
      .. "/yazi-lazyvim",
    floating_window_scaling_factor = 0.85,
    yazi_floating_window_winblend = 0,
    yazi_floating_window_border = "rounded",
  },
}


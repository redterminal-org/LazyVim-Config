return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        mason = false,
      },
    },
    autoformat = false,
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
  },
}

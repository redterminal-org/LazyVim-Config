return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        mason = false,
      },
      arduino_language_server = {
        cmd = {
          "arduino_language_server",
          "-cli-config",
          vim.fn.expand '~/.arduino15/arduino-cli.yaml',
          "-fqbn",
          "esp32:esp32:esp32",
        },
      },
    },
    autoformat = false,
    format = {
      formatting_options = nil,
      timeout_ms = nil,
    },
  },
}

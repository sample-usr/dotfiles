return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      yamlls = {
        settings = {
          yaml = {
            keyOrdering = false,
          },
        },
      },
      ansiblels = {
        settings = {
          ansible = {
            ansibleLint = {
              enabled = true,
            },
          },
        },
      },
    },
  },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
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

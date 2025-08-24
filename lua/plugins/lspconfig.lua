return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      },
      yamlls = {
        settings = {
          -- To support AWS Cloudformation
          yaml = {
            customTags = {
              "!Base64",
              "!Cidr",
              "!FindInMap sequence",
              "!GetAtt",
              "!GetAtt sequence",
              "!GetAZs",
              "!GetAZs sequence",
              "!ImportValue",
              "!ImportValue sequence",
              "!Join",
              "!Join sequence",
              "!Ref",
              "!Select sequence",
              "!Split sequence",
              "!Sub sequence",
              "!Sub",
              "!And sequence",
              "!Condition",
              "!Equals sequence",
              "!If sequence",
              "!Not sequence",
              "!Or sequence",
            },
          },
        },
      },
      gleam = {
        settings = {},
      },
    },
  },
}

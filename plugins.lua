local overrides = require("custom.configs.overrides")
local plugins = {
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function ()
        local nvchad_opts = require "plugins.configs.treesitter"
        local custom_opts = overrides.treesitter
        return vim.tbl_deep_extend("force", nvchad_opts, custom_opts)
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function ()
      require("custom.configs.copilot")
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = overrides.blankline
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
        local nvchad_opts = require("plugins.configs.cmp")
        -- nvchad_opts.mapping["<Tab>"] = nil
        -- nvchad_opts.mapping["<S-Tab>"] = nil
        return nvchad_opts
    end
  },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000"
        }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            lsp = {
                signature = {
                    enabled = false
                },
                hover = {
                    enabled = false
                },
                handlers = {
                    disabled = true
                }
            }
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify"
        }
    }
}
return plugins

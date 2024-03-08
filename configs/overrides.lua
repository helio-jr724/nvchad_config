local M = {}

local hl_list = {}
for i, color in pairs({ '#662121', '#767621', '#216631', '#325a5e', '#324b7b', '#562155' }) do
  local name = 'IndentBlanklineIndent' .. i
  vim.api.nvim_set_hl(0, name, { fg = color })
  table.insert(hl_list, name);
end
M.blankline = {
  show_trailing_blankline_indent = true,
  show_first_indent_level = true,
  -- char_highlight_list = hl_list
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "python",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "c",
    "go",
    "gomod",
    "dockerfile",
    "yaml",
    "json",
    "lua",
    "groovy"
  }
}

M.nvimtree= {
  git = {
    enable = true
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true
      }
    },
    indent_markers = {
      enable = true
    }
  }
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    -- python stuff
    "pyright",
    -- golang stuff
    "gopls",
    -- javascript stuff
    "typescript-language-server",
    -- sql stuff
    "sqlls"
  }
}

M.cmp = function ()
    local nvchad_opts = require("plugins.configs.cmp")
    local custom_opts = {
        mapping = {
            ["<Tab>"] = nil,
            ["<S-Tab>"] = nil
        }
    }
    return vim.tbl_deep_extend("force", nvchad_opts, custom_opts)
    end
return M


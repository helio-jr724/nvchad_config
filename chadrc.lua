---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'tokyonight',
  statusline = {
    theme = "default",
    separator_style = "arrow"
  },
  nvdash = {
    load_on_startup = true,
    header = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
      [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
      [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
  },
  tabufline = {
    overriden_modules = function (modules)
      table.remove(modules,4)
    end
  }
}
M.mappings = require('custom.mappings')
M.plugins = 'custom.plugins'
return M

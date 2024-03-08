local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      ["<leader>e"] = "",
      ["<leader>ee"] = "",
      ["<C-n>"] = ""
  }
}


-- Your custom mappings
M.general = {
  n = {
    [";"] = { ":", "Enter Command Mode", opts = { nowait = true}},
    ["<leader>tt"] = {
      function()
         require("base46").toggle_transparency()
      end,
      "Toggle Transparency",
    },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line down"},
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line up" },
  }


}
M.nvimtree = {
  n = {
     ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
     ["<leader>ee"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  }
}

return M

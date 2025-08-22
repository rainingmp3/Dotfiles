
-- lua/plugins/icons.lua
return {
  { "echasnovski/mini.icons", enabled = false },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    opts = {
      override = {
        cpp = { icon = "󰙲", color = "#519aba", name = "Cpp" },
        py  = { icon = "󰌠", color = "#ffbc03", name = "Python" },
      },
    },
  },
}

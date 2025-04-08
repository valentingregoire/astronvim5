return {
  "render-markdown.nvim",
  -- enabled = false,
  opts = {
    heading = {
      sign = false,
      position = "inline",
      width = "block",
      icons = { "", "", "", "", "", "", "", "", "", "" },
      left_pad = 1,
      right_pad = 1,
      -- border = true,
    },
    bullet = {
      -- left_pad = 4,
      -- right_pad = 1,
    },
  },
  -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
}

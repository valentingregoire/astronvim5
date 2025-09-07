return {
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
      -- modify variables used by heirline but not defined in the setup call directly
      status = {
        -- define the separators between each section
      },
    },
  },
  --   {
  --     "rebelot/heirline.nvim",
  --     opts = function(_, opts)
  --       local status = require "astroui.status"
  --       opts.statusline = {
  --         status.component.foldcolumn(),
  --         status.component.numbercolumn(),
  --         status.component.signcolumn(),
  --       }
  --       -- status.component.builder({
  --       --
  --       -- })
  --     end,
  --   },
}

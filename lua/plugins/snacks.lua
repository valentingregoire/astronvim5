local dashboard = require "plugins.snacks.dashboard"

---@type LazySpec
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = dashboard,
  },
}

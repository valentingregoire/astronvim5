---@type LazySpec
return {
  "jay-babu/mason-null-ls.nvim",
  opts = function(_, opts)
    opts.handlers.codespell = function()
      local null_ls = require "null-ls"
      null_ls.register(null_ls.builtins.diagnostics.codespell)
    end
    -- opts.handlers.ruff = function()
    --   local null_ls = require "null-ls"
    --   null_ls.register(null_ls.builtins.diagnostics.ruff)
    -- end
  end,
}

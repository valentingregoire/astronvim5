return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require "dap"
    dap.adapters.python = {
      type = "executable",
      -- command = "./.venv/bin/python",
      command = vim.fn.getcwd() .. "/.venv/bin/python",
      -- command = ".venv/bin/python",
      -- command = "/home/valentin/.local/share/nvim_astro4/mason/packages/debugpy",
      cwd = vim.fn.getcwd(),
      args = { "-m", "debugpy.adapter" },
    }
    dap.adapters.debugpy = {
      type = "executable",
      -- command = "/home/valentin/.local/share/nvim_astro4/mason/packages/debugpy-adapter",
      command = "${workspaceFolder}/.venv/bin/python",
      -- command = ".venv/bin/python",
    }
  end,
}

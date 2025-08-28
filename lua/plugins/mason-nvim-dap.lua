-- return {
--   "mfussenegger/nvim-dap",
--   opts = function()
--     local dap = require "dap"
--     -- dap.adapters["pwa-node"].host = "127.0.0.1"
--     dap.adapters["pwa-node"] = {
--       type = "server",
--       host = "127.0.0.1",
--       port = "${port}",
--       executable = {
--         command = "js-debug-adapter",
--         args = { "${port}" },
--       },
--     }
--   end,
-- }

return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    handlers = {
      python = function(config)
        local dap = require "dap"
        dap.adapters.python = {
          type = "executable",
          command = "${workspaceFolder}/.venv/bin/python",
          args = {
            "-m",
            "debugpy.adapter",
          },
        }

        dap.configurations.python = {
          {
            type = "python",
            request = "launch",
            name = "  Debug (F5)",
            program = "${file}",
          },
        }
        -- require("mason-nvim-dap").default_setup(config)
      end,
      js = function(config)
        local dap = require "dap"
        dap.adapters["pwa-node"] = {
          type = "server",
          host = "localhost",
          port = "${port}",
          executable = {
            command = "node",
            args = {
              "/home/valentin/.local/share/nvim_astro4/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
              "${port}",
            },
          },
        }
      end,
      -- node = function(config)
      --   local dap = require "dap"
      --   dap.adapters.node = {
      --
      --   }
    },
  },
}

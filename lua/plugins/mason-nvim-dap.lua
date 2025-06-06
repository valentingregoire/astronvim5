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
      function(config)
        config.automatic_installation = true
        require("mason-nvim-dap").default_setup(config)
      end,
      python = function(config)
        config.adapters = {
          type = "executable",
          command = "python",
          args = {
            "-m",
            "debugpy.adapter",
          },
        }
        require("mason-nvim-dap").default_setup(config)
      end,
      js = function(config)
        config.adapters = {
          -- type = "pwa-node",
          -- request = "launch",
          -- name = "Launch file",
          -- program = "${file}",
          -- cwd = "${workspaceFolder}",
          type = "server",
          host = "127.0.0.1",
          -- port = "${port}",
          port = 9229,
          executable = {
            command = "js-debug-adapter",
            -- args = { "${port}" },
            args = { "9229" },
          },
          require("mason-nvim-dap").default_setup(config),
        }
      end,
      -- js = function(config)
      --   config
      --   python = function(source_name)
      --     local dap = require "dap"
      --     -- dap.adapters.python = {
      --     --   type = "executable",
      --     --   command = "/usr/bin/python3",
      --     --   args = {
      --     --     "-m",
      --     --     "debugpy.adapter",
      --     --   },
      --     -- }
      --     dap.adapters["pwa-node"] = {
      --       type = "server",
      --       host = "127.0.0.1",
      --       port = "${port}",
      --       executable = {
      --         command = "js-debug-adapter",
      --         args = { "${port}" },
      --       },
      --     }
      --     -- dap.configurations.javascript = {
      --     --   {
      --     --     type = "pwa-node",
      --     --     request = "launch",
      --     --     name = "Launch Custom",
      --     --     program = "${file}",
      --     --     cwd = vim.fn.getcwd(),
      --     --     sourceMaps = true,
      --     --   },
      --     --   -- {
      --     --   --   type = "pwa-node",
      --     --   --   request = "attach",
      --     --   --   name = "Attach custom",
      --     --   --   processId = require("dap.utils").pick_process,
      --     --   --   cwd = vim.fn.getcwd(),
      --     --   --   sourceMaps = true,
      --     --   -- },
      --     -- }
      --     dap.configurations.typescript = {
      --       {
      --         type = "pwa-node",
      --         request = "launch",
      --         name = "Launch file ts",
      --         runtimeExecutable = "deno",
      --         runtimeArgs = {
      --           "run",
      --           "--inspect-wait",
      --           "--allow-all",
      --         },
      --         program = "${file}",
      --         cwd = "${workspaceFolder}",
      --         attachSimplePort = 9229,
      --       },
      --     }
      --
      --     -- dap.configurations.python = {
      --     --   {
      --     --     type = "python",
      --     --     request = "launch",
      --     --     name = "Launch file",
      --     --     program = "${file}", -- This configuration will launch the current file if used.
      --     --   },
      --     -- }
      --   end,
      -- },
    },
  },
}

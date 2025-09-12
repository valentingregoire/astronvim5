return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
  },
  opts = function(_, opts)
    -- require("neotest").setup {
    opts.adapters = opts.adapters or {}
    table.insert(
      opts.adapters,
      require "neotest-jest" {
        jestCommand = "yarn test --",
        jestArguments = function(defaultArguments, context) return defaultArguments end,
        jestConfigFile = "custom.jest.config.ts",
        env = { CI = true },
        -- cwd = function(path) return vim.fn.getcwd() end,
        cwd = function(path) return require("neotest-jest.util").find_package_json_ancestor(path) end,
        isTestFile = require("neotest-jest.jest-util").defaultIsTestFile,
      }
    )
    -- adapters = {
    --   require "neotest-jest" {
    --     jestCommand = "yarn test --",
    --     jestArguments = function(defaultArguments, context) return defaultArguments end,
    --     jestConfigFile = "custom.jest.config.ts",
    --     env = { CI = true },
    --     cwd = function(path) return vim.fn.getcwd() end,
    --     isTestFile = require("neotest-jest.jest-util").defaultIsTestFile,
    --   },
    -- },
  end,
}

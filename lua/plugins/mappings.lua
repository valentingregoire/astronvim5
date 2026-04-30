local snip = "<Leader>r"
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<C-`>"] = { "<C-^>", desc = "Last buffer" },
          ["<A-S-j>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
          ["<A-S-k>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },

          -- SnipRun
          [snip] = { desc = " Run" },
          [snip .. "l"] = { "<Plug>SnipRun", desc = "󰁔 Run line" },
          [snip .. "c"] = { "Vgg<Plug>SnipRun", desc = "󰘍 Run to cursor" },
          [snip .. "r"] = { "<Plug>SnipReset", desc = "󰑐 Reset" },
          [snip .. "i"] = { "<Plug>SnipInfo", desc = " Info" },
          [snip .. "q"] = { "<Plug>SnipClose", desc = "󰅙 Close" },
        },
        v = {
          [">"] = { ">gv", desc = "Indent" },
          ["<"] = { "<gv", desc = "Dedent" },

          -- SnipRun
          [snip] = { desc = " Run" },
          [snip .. "r"] = { "<Plug>SnipRun", desc = "󰹹 Run selection" },
        },
      },
    },
  },
}

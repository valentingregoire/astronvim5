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
        },
        v = {
          [">"] = { ">gv", desc = "Indent" },
          ["<"] = { "<gv", desc = "Dedent" },
        },
      },
    },
  },
}

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
          ["<C-S-j"] = { ":bPrevious<CR>", desc = "Previous buffer" },
          ["<C-S-k"] = { ":bNext<CR>", desc = "Next buffer" },
        },
        v = {
          [">"] = { ">gv", desc = "Indent" },
          ["<"] = { "<gv", desc = "Dedent" },
        },
      },
    },
  },
}

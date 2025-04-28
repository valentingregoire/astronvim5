-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- ui
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.programming-language-support.csv-vim" },

  -- completion
  { import = "astrocommunity.completion.cmp-spell" },
}

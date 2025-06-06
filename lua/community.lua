-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- ui
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- language packs
  -- backend
  -- Python/toml
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  -- lua
  { import = "astrocommunity.pack.lua" },
  -- frontend
  { import = "astrocommunity.pack.eslint" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.utility.lua-json5" },
  -- yaml
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.just" },
  -- csv
  { import = "astrocommunity.programming-language-support.csv-vim" },
  -- DevOps
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.nginx" },
  -- markdown/latex
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- completion
  { import = "astrocommunity.completion.cmp-spell" },
}

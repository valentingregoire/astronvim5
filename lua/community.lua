-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- themes
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  -- ui
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.pack.nvchad-ui" },
  { import = "astrocommunity.recipes.picker-nvchad-theme" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.disable-borders" },
  -- mappings
  { import = "astrocommunity.recipes.picker-lsp-mappings" },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },

  -- ai
  { import = "astrocommunity.recipes.ai" },

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
  -- { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.typescript" },
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
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- running/debugging
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.recipes.vscode" },

  -- unit testing
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.test.nvim-coverage" },

  -- editing support
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },

  -- completion
  { import = "astrocommunity.completion.cmp-spell" },

  -- vscode
  { import = "astrocommunity.recipes.vscode" },
}

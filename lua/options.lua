-- all options can be set here, as the options in astrocore.lua don't seem to be picked up
vim.opt.spell = false
vim.opt.spelloptions = "noplainbuffer,camel"
vim.opt.spellfile = vim.fn.stdpath "config" .. "/spell/en.utf-8.add"
-- vim.lsp.semantic_tokens = false

vim.diagnostic.config {
  float = {
    source = true,
  },
}

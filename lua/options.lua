-- all options can be set here, as the options in astrocore.lua don't seem to be picked up
vim.opt.spell = true
vim.opt.spelloptions = "noplainbuffer,camel"
vim.opt.spellfile = vim.fn.stdpath "config" .. "/spell/en.utf-8.add"

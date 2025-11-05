-- if true then return {} end
-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    spellfile = vim.fn.stdpath "config" .. "/spell/en.utf-8.add",
    -- autocmds = {
    -- LspProgress = {
    --
    -- }
    -- LspProgress = {
    --   {
    --     event = { "InsertLeave", "BufEnter" },
    --     desc = "test autocmd",
    --     ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
    --     callback = function(ev)
    --       local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    --       -- vim.notify(vim.lsp.status(), "info", {
    --       --   id = "lsp_progress",
    --       --   title = "LSP Progress",
    --       --   opts = function(notif)
    --       --
    --       --     notif.icon = ev.data.params.value.kind == "end" and " "
    --       --       or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
    --       --   end,
    --       -- })
    --       vim.notify("Status: " .. vim.lsp.status())
    --       -- Snacks.notifier.notify("Hello lol: " .. args)
    --     end,
    --   },
    -- },
  },
  -- Configure core features of AstroNvim
  features = {
    large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
    autopairs = true, -- enable autopairs at start
    cmp = true, -- enable completion at start
    diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
    highlighturl = true, -- highlight URLs at start
    notifications = true, -- enable notifications at start
  },
  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  -- passed to `vim.filetype.add`
  filetypes = {
    -- see `:h vim.filetype.add` for usage
    extension = {
      foo = "fooscript",
    },
    filename = {
      [".foorc"] = "fooscript",
    },
    pattern = {
      [".*/etc/foo/.*"] = "fooscript",
    },
  },
  -- vim options can be configured here
  options = {
    -- FIXME: options are not getting picked up!
    -- opt = { -- vim.opt.<key>
    --   relativenumber = true, -- sets vim.opt.relativenumber
    --   number = true, -- sets vim.opt.number
    --   spell = false, -- sets vim.opt.spell
    --   spellfile = vim.fn.stdpath "config" .. "/spell/en.utf-8.add",
    --   spelloptions = "noplainbuffer,camel",
    --   signcolumn = "yes", -- sets vim.opt.signcolumn to yes
    --   wrap = true, -- sets vim.opt.wrap
    -- },
    g = { -- vim.g.<key>
      -- configure global vim variables (vim.g)
      -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
      -- This can be found in the `lua/lazy_setup.lua` file
    },
  },
  -- Mappings can be configured through AstroCore as well.
  -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
  mappings = {
    -- first key is the mode
    n = {},
  },
}

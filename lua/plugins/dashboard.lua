return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        --         header = [[
        --  ██████   █████                                ███
        -- ░░██████ ░░███                                ░░░
        --  ░███░███ ░███   ██████   ██████  █████ █████ ████  █████████████
        --  ░███░░███░███  ███░░███ ███░░███░░███ ░░███ ░░███ ░░███░░███░░███
        --  ░███ ░░██████ ░███████ ░███ ░███ ░███  ░███  ░███  ░███ ░███ ░███
        --  ░███  ░░█████ ░███░░░  ░███ ░███ ░░███ ███   ░███  ░███ ░███ ░███
        --  █████  ░░█████░░██████ ░░██████   ░░█████    █████ █████░███ █████
        -- ░░░░░    ░░░░░  ░░░░░░   ░░░░░░     ░░░░░    ░░░░░ ░░░░░ ░░░ ░░░░░]],
        header = [[
                                                                   
      ████ ██████           █████      ██                    
     ███████████             █████                            
     █████████ ███████████████████ ███   ███████████  
    █████████  ███    █████████████ █████ ██████████████  
   █████████ ██████████ █████████ █████ █████ ████ █████  
 ███████████ ███    ███ █████████ █████ █████ ████ █████ 
██████  █████████████████████ ████ █████ █████ ████ ██████]],
        keys = {
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          {
            icon = "󰚰 ",
            key = "U",
            desc = "Check Updates",
            action = ":Lazy check",
            enabled = package.loaded.lazy ~= nil,
          },
        },
      },
      sections = {
        { section = "header" },
        {
          padding = { 1, 0 },
          align = "center",
          text = { "👋 Welcome, Valentin!", hl = "TabLineSel" },
        },
        { section = "keys", gap = 0 },
        {
          section = "projects",
          icon = " ",
          title = { "Projects", hl = "SnacksDashboardDesc" },
          indent = 2,
          key = "p",
          action = ":lua Snacks.dashboard.pick('projects')",
        },
        -- { icon = "󰅙 ", key = "q", desc = "Quit", action = ":qa", padding = { 1, 0 } },
        {
          section = "terminal",
          height = 3,
          cmd = "gh notify -sn 5; sleep 0.01",
          title = { "GitHub Notifications", hl = "SnacksDashboardDesc" },
          indent = 2,
          icon = "󰊤 ",
          key = "G",
          action = function() vim.ui.open "https://github.com/notifications" end,
        },
        { icon = "󰅙 ", key = "q", desc = "Quit", action = ":qa", padding = { 2, 0 } },
        { section = "startup" },
      },
    },
  },
}

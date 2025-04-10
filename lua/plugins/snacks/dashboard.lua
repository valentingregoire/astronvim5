return {
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
      { icon = " ", desc = "New File", key = "n", action = ":ene | startinsert" },
      {
        section = "recent_files",
        icon = " ",
        title = { "Recent Files", hl = "SnacksDashboardDesc" },
        key = "r",
        indent = 2,
        limit = 5,
        action = ":lua Snacks.dashboard.pick('oldfiles')",
      },
      {
        section = "projects",
        icon = " ",
        title = { "Projects", hl = "SnacksDashboardDesc" },
        key = "p",
        indent = 2,
        limit = 5,
        action = ":lua Snacks.dashboard.pick('projects')",
      },
      {
        section = "terminal",
        icon = "󰊤 ",
        title = { "GitHub Notifications", hl = "SnacksDashboardDesc" },
        key = "G",
        height = 3,
        indent = 2,
        cmd = "gh notify -sn 3; sleep 0.01",
        action = function() vim.ui.open "https://github.com/notifications" end,
      },
      {
        icon = " ",
        key = "c",
        desc = "Config",
        action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
      },
      { icon = " ", key = "s", desc = "Restore Session", section = "session" },
      {
        icon = "󰚰 ",
        key = "u",
        desc = "Check Updates",
        action = ":Lazy check",
        enabled = package.loaded.lazy ~= nil,
      },
      { icon = "󰅙 ", key = "q", desc = "Quit", padding = { 2, 0 }, action = ":qa" },
    },
  },
  sections = {
    { section = "header" },
    {
      text = { "👋 Welcome, Valentin!", hl = "TabLineSel" },
      align = "center",
      padding = { 1, 0 },
    },
    { section = "keys" },
    { section = "startup" },
  },
}

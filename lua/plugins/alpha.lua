return {
  {
    "goolord/alpha-nvim",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.startify")

      dashboard.section.header.val = {
        [[                                                     ]],
        [[                                                     ]],
        [[                                                     ]],
        [[ /$$   /$$  /$$$$$$  /$$    /$$ /$$$$$$ /$$      /$$ ]],
        [[| $$  /$$/ /$$__  $$| $$   | $$|_  $$_/| $$$    /$$$ ]],
        [[| $$ /$$/ | $$  \ $$| $$   | $$  | $$  | $$$$  /$$$$ ]],
        [[| $$$$$/  | $$  | $$|  $$ / $$/  | $$  | $$ $$/$$ $$ ]],
        [[| $$  $$  | $$  | $$ \  $$ $$/   | $$  | $$  $$$| $$ ]],
        [[| $$\  $$ | $$  | $$  \  $$$/    | $$  | $$\  $ | $$ ]],
        [[| $$ \  $$|  $$$$$$/   \  $/    /$$$$$$| $$ \/  | $$ ]],
        [[|__/  \__/ \______/     \_/    |______/|__/     |__/ ]],
        [[                                                     ]],
        [[                                                     ]],
        [[                                                     ]],
      }

      dashboard.section.header.opts.hl = "AlphaHeader"

      vim.api.nvim_set_hl(0, "AlphaHeader", {
        fg = "#B39DDB", 
        bold = true,
      })

      alpha.setup(dashboard.opts)
    end,
  },
}

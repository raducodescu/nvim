local wk = require("which-key")
local default_options = { silent = true }
wk.register({
  c = {
    name = "Coding",
    r = {
      function()
        require("luapad.run").run()
      end,
      "Run buffer content",
    },
    l = {
      function()
        require("luapad").init()
      end,
      "Luapad",
    },
    t = { "<cmd>PlenaryBustedDirectory tests/<cr>", "Run tests in ./tests" },
  },
}, { prefix = "<leader>", mode = "n", default_options })

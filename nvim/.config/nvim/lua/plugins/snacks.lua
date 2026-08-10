return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = { enabled = false },
      explorer = { enabled = false },
	  terminal = {
        enabled = true,
      },
	  styles = {
        terminal = {
          relative = "editor",
          border = "rounded",
          position = "float",
          backdrop = 60,
          height = 0.9,
          width = 0.9,
          zindex = 50,
        },
      },

      dashboard = {
        enabled = true,
        preset = {
          header = table.concat({
            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
          }, "\n"),
        },
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
          {
            align = "center",
            text = {
              { "\n " },
              { "Help poor children in Uganda!", hl = "NonText" },
              { "\n " },
              { "type  :help iccf<Enter>       for information ", hl = "NonText" },
              { "\n " },
              { "type  :q<Enter>               to exit         ", hl = "NonText" },
            },
            padding = 1,
          },
        },
      },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
      quickfile = { enabled = true },
      bigfile = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      indent = {
        enabled = true,
        scope = {
          enabled = true, -- enable highlighting the current scope
          underline = false,
          hl = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
          },
        },
      },
      scope = { enabled = true },
      input = { enabled = true },
      scroll = {
        enabled = true,
        animate = {
          duration = { step = 10, total = 200 },
          easing = "linear",
        },
        animate_repeat = {
          delay = 100,
          duration = { step = 5, total = 50 },
          easing = "linear",
        },
      },
    },
    keys = {
     -- { "<leader>e", function() Snacks.explorer() end, desc = "󰈔 文件树" },
      { "<leader>t", function() Snacks.terminal() end, desc = "󰅇 浮动终端", mode = { "n", "t" } },
      { "<c-g>", function() require("snacks").lazygit() end, desc = "󰊢 Lazygit" },
      { "<leader>gB", function() Snacks.gitbrowse() end, desc = "󰊈 在浏览器中打开", mode = { "n", "v" } },
      { "<leader>gb", function() require("snacks").git.blame_line() end, desc = "[Snacks] Git blame line" },
      { "<leader>bd", function() Snacks.bufdelete() end, desc = "󰅩 关闭 缓冲区" },
      { "<leader>n", function() Snacks.notifier.show_history() end, desc = "󰿟 通知历史" },
      { "<leader>un", function() Snacks.notifier.hide() end, desc = "󰿟 清除通知" },
      { "]r", function() Snacks.words.jump(vim.v.count1) end, desc = "󰝆 下一个引用" },
      { "[r", function() Snacks.words.jump(-vim.v.count1) end, desc = "󰝆 上一个引用" },
      { "<leader>z", function() require("snacks").zen() end, desc = "[Snacks] Toggle Zen Mode" },
      { "<leader>Z", function() require("snacks").zen.zoom() end, desc = "[Snacks] Toggle Zoom" },
      { "<leader>su", function() require("snacks").picker.undo() end, desc = "[Snacks] Undo history" },
	  { "]]", function() Snacks.scope.jump({ dir = "next" }) end, desc = "Next scope" },
      { "[[", function() Snacks.scope.jump({ dir = "prev" }) end, desc = "Prev scope" },
    },
  },
}



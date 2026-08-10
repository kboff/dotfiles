return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
    },
  },

  -- {
  --   "cappyzawa/trim.nvim",
  --   event = "BufWritePre",
  --   opts = {},
  -- },

  {
    "mbbill/undotree",
    keys = {
      { "<leader>ut", "<cmd>UndotreeToggle<cr>", desc = "Toggle undo-tree" },
    },
    init = function()
      vim.cmd([[
      if has("persistent_undo")
         let target_path = expand('~/.undodir')

          " create the directory and any parent directories if the location does not exist.
          if !isdirectory(target_path)
              call mkdir(target_path, "p", 0700)
          endif

          let &undodir=target_path
          set undofile
      endif
      ]])
    end,
  },




  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
    },
    event = "VeryLazy",
    -- stylua: ignore
    keys = {
      ---@diagnostic disable-next-line: undefined-field
      { "<leader>st", function() require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME", "BUG", "FIXIT", "HACK", "WARN", "ISSUE"  } }) end, desc = "[TODO] Pick todos (without NOTE)", },
      ---@diagnostic disable-next-line: undefined-field
      { "<leader>sT", function() require("snacks").picker.todo_comments() end, desc = "[TODO] Pick todos (with NOTE)", },
    },
    config = true,
  },

  -- {
  --   "echasnovski/mini.surround",-- TODO:设计不冲突的快捷键
  --   version = "*",
  --   event = "BufReadPost",
  --   config = true,
  --   keys = {
  --     -- Disable the vanilla `s` keybinding
  --     { "s", "<NOP>", mode = { "n", "x", "o" } },
  --   },
  -- },

  {
    -- Extend `a`/`i` textobjects  -- TODO: 阅读该插件文档
    "echasnovski/mini.ai",
    version = "*",
    event = "BufReadPost",
    config = true,
  },

  {
    "jake-stewart/multicursor.nvim",-- TODO:看使用方法
    branch = "1.0",
    event = "BufReadPost",
    keys = {
      -- Append/insert for each line of visual selections. Similar to block selection insertion.
      {
        "mI",
        function()
          require("multicursor-nvim").insertVisual()
        end,
        mode = "x",
        desc = "Insert cursors at visual selection",
      },
      {
        "mA",
        function()
          require("multicursor-nvim").appendVisual()
        end,
        mode = "x",
        desc = "Append cursors at visual selection",
      },
    },
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      -- Mappings defined in a keymap layer only apply when there are multiple cursors. This lets you have overlapping mappings.
      mc.addKeymapLayer(function(layerSet)
        -- Enable and clear cursors using escape.
        layerSet("n", "<esc>", function()
          mc.clearCursors()
        end)
      end)
    end,
  },

  -- { "wakatime/vim-wakatime", lazy = false },去wakatime官网看使用时长
}

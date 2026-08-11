return{
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
        anti_conceal = {
            enabled = true,
            disabled_modes = { 'n' },
            above = 0,
            below = 0,
            ignore = {
                code_background = true,
                indent = true,
                sign = true,
                virtual_lines = true,
				head_borer = true,
				head_background = true,
            },
        },
		completions = {
			blink = { enabled = true },
			lsp = { enabled = true },
		},
		sign = { enabled = false },
		code = {
			width = 'block',
			min_width = 80,
			border = 'thin',
			left_pad = 1,
			right_pad = 1,
			disable_background = { 'diff' },
			--language info
			position = 'left',
			language_icon = true,
			language_name = true,
            language_border = ' ',
			language_left = '',
            language_right = '',

		},
		heading = {
			--icons = {}
			border = true,
			render_modes = true,
		},
		checkbox = { checked = { scope_highlight = '@markup.strikethrough' } },
		indent = {
			enabled = true,
			skip_level = 0,
			skip_heading = true
    },
    },
	keys = {
		{"<leader>mk",function ()require("render-markdown").toggle()	end, desc = "Toggle markdown rendering",mode = {"n", "t"} }
    }
  },

  {
	'brianhuster/live-preview.nvim',
	dependencies = {
			'ibhagwan/fzf-lua',
	},
	keys = {
		{"<leader>ml",function() vim.cmd("LivePreview start") end, desc = "Start markdown preview in browser",mode = {"n", "t"} },
		{"<leader>mc",function() vim.cmd("LivePreview close") end, desc = "Close markdown preview in browser",mode = {"n", "t"} },
		{"<leader>mp",function() vim.cmd("LivePreview pick") end, desc = "Pick a file to preview",mode = {"n", "t"} },
	}
  }


}

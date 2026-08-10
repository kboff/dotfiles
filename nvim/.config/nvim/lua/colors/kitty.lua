-- ~/.config/nvim/lua/colors/mykitty.lua
local colors = {
  bg       = "#0f1417",
  fg       = "#dfe3e6",
  cursor   = "#dfe3e6",
  sel_fg   = "#1e333c",
  sel_bg   = "#b4cad5",
  url      = "#8ad0ef",

  color0  = "#0f1417",
  color1  = "#ff72a0",
  color2  = "#77ef84",
  color3  = "#fff672",
  color4  = "#6fbfe3",
  color5  = "#18546e",
  color6  = "#8ad0ef",
  color7  = "#ebf6fa",
  color8  = "#8f979b",
  color9  = "#ff9fbe",
  color10 = "#a5ffaf",
  color11 = "#fff9a5",
  color12 = "#a3e2ff",
  color13 = "#b3e7ff",
  color14 = "#cef0ff",
  color15 = "#f8fdff",
}

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- 基础
set_hl("Normal",          { fg = colors.fg, bg = colors.bg })
set_hl("Cursor",          { fg = colors.cursor, bg = colors.fg })
set_hl("CursorLine",      { bg = colors.bg })
set_hl("CursorColumn",    { bg = colors.bg })

-- 选择
set_hl("Visual",          { fg = colors.sel_fg, bg = colors.sel_bg })
set_hl("VisualNOS",       { fg = colors.sel_fg, bg = colors.sel_bg })

-- 搜索
set_hl("Search",          { fg = colors.bg, bg = colors.color6 })
set_hl("IncSearch",       { fg = colors.bg, bg = colors.color4 })

-- 注释
set_hl("Comment",         { fg = colors.color8 })

-- 常量
set_hl("Constant",        { fg = colors.color2 })
set_hl("String",          { fg = colors.color10 })
set_hl("Number",          { fg = colors.color3 })
set_hl("Boolean",         { fg = colors.color3 })

-- 标识符/函数
set_hl("Identifier",      { fg = colors.color4 })
set_hl("Function",        { fg = colors.color12 })

-- 语句/关键字
set_hl("Statement",       { fg = colors.color1 })
set_hl("Keyword",         { fg = colors.color9 })
set_hl("Conditional",     { fg = colors.color1 })
set_hl("Repeat",          { fg = colors.color1 })
set_hl("Label",           { fg = colors.color1 })

-- 预处理
set_hl("PreProc",         { fg = colors.color5 })
set_hl("Include",         { fg = colors.color5 })
set_hl("Define",          { fg = colors.color5 })
set_hl("Macro",           { fg = colors.color5 })

-- 类型
set_hl("Type",            { fg = colors.color6 })
set_hl("StorageClass",    { fg = colors.color6 })
set_hl("Structure",       { fg = colors.color6 })
set_hl("Typedef",         { fg = colors.color6 })

-- 特殊
set_hl("Special",         { fg = colors.color13 })
set_hl("SpecialChar",     { fg = colors.color14 })
set_hl("Tag",             { fg = colors.color14 })
set_hl("Delimiter",       { fg = colors.color15 })

-- 下划线/错误
set_hl("Underlined",      { fg = colors.color4, underline = true })
set_hl("Error",           { fg = colors.color1, bg = colors.bg })
set_hl("Todo",            { fg = colors.color3, bg = colors.bg })

-- 状态行
set_hl("StatusLine",      { fg = colors.fg, bg = colors.color5 })
set_hl("StatusLineNC",    { fg = colors.color8, bg = colors.color0 })
set_hl("TabLine",         { fg = colors.fg, bg = colors.color0 })
set_hl("TabLineSel",      { fg = colors.fg, bg = colors.color4 })
set_hl("TabLineFill",     { fg = colors.fg, bg = colors.color0 })

-- 目录/行号
set_hl("Directory",       { fg = colors.color4 })
set_hl("LineNr",          { fg = colors.color8 })
set_hl("CursorLineNr",    { fg = colors.color7 })

-- 括号匹配
set_hl("MatchParen",      { fg = colors.bg, bg = colors.color3 })

-- 补全菜单
set_hl("Pmenu",           { fg = colors.fg, bg = colors.color0 })
set_hl("PmenuSel",        { fg = colors.bg, bg = colors.color4 })
set_hl("PmenuSbar",       { bg = colors.color8 })
set_hl("PmenuThumb",      { bg = colors.color7 })

-- 设置配色名称
vim.g.colors_name = "kitty"

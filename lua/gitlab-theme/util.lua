local util = {}

---Apply a single highlight group.
---@param group string
---@param color { fg?: string, bg?: string, style?: string, sp?: string }
function util.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg    = color.fg    and "guifg=" .. color.fg    or "guifg=NONE"
  local bg    = color.bg    and "guibg=" .. color.bg    or "guibg=NONE"
  local sp    = color.sp    and "guisp=" .. color.sp    or ""
  vim.cmd(string.format("highlight %s %s %s %s %s", group, style, fg, bg, sp))
end

---Apply a table of { GroupName = { fg, bg, style, sp } }.
---@param colorset table
function util.loadColorSet(colorset)
  for group, color in pairs(colorset) do
    util.highlight(group, color)
  end
end

---Set terminal colors (0–15).
---@param c table palette
function util.loadTerminal(c)
  vim.g.terminal_color_0  = c.bg_alt
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.orange
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.purple
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = c.fg_gutter
  vim.g.terminal_color_9  = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.orange
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.purple
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
end

---Autocommand: apply bg_alt to sidebar/floating windows when contrast is on.
---@param c table palette
function util.contrast(c)
  local group = vim.api.nvim_create_augroup("GitlabThemeContrast", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    group   = group,
    pattern = {
      "NvimTree", "neo-tree", "packer", "qf",
      "aerial", "Outline", "toggleterm",
    },
    callback = function()
      vim.api.nvim_win_set_option(0, "winhighlight",
        "Normal:NormalFloat,NormalNC:NormalFloat")
    end,
  })
end

---Apply config toggles to a raw palette copy.
---@param raw table  raw palette from palette module
---@param opts table config options
---@return table     modified palette
function util.applyConfig(raw, opts)
  local c = vim.deepcopy(raw)

  if not opts.contrast then
    c.bg_alt = c.bg
  end

  if not opts.borders then
    c.border = c.bg
  end

  if opts.transparent then
    c.bg     = c.none
    c.bg_alt = c.none
  end

  c.italic = opts.italic ~= false and "italic" or c.none
  c.bold   = opts.bold   ~= false and "bold"   or c.none

  return c
end

---Main load orchestrator.
---@param theme_name string
---@param opts table config options
function util.load(theme_name, opts)
  local theme   = require("gitlab-theme.theme")
  local palette = require("gitlab-theme.palette")
  local raw     = palette.load(theme_name)
  local c       = util.applyConfig(raw, opts)

  -- Reset
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") ~= 0 then
    vim.cmd("syntax reset")
  end

  -- Determine background from theme name
  if theme_name:find("_dark") then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end

  vim.opt.termguicolors = true
  vim.g.colors_name     = theme_name

  -- Load all highlight groups
  theme.loadEditor(c)
  theme.loadSyntax(c)
  theme.loadTreeSitter(c)
  theme.loadFiletypes(c)
  theme.loadLSP(c)
  theme.loadPlugins(c)

  if opts.contrast then
    util.contrast(c)
  end
  util.loadTerminal(c)
end

return util

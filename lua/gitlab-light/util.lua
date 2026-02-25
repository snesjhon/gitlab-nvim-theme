local util = {}

-- Apply a single highlight group
-- color: { fg, bg, style, sp }
function util.highlight(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg    = color.fg    and "guifg=" .. color.fg    or "guifg=NONE"
  local bg    = color.bg    and "guibg=" .. color.bg    or "guibg=NONE"
  local sp    = color.sp    and "guisp=" .. color.sp    or ""
  vim.cmd(string.format("highlight %s %s %s %s %s", group, style, fg, bg, sp))
end

-- Apply a table of { GroupName = { fg, bg, style, sp } }
function util.loadColorSet(colorset)
  for group, color in pairs(colorset) do
    util.highlight(group, color)
  end
end

-- Set terminal colors (0–15)
function util.loadTerminal(c)
  vim.g.terminal_color_0  = c.bg_alt      -- black (dark bg)
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.orange
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.purple
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg          -- white
  vim.g.terminal_color_8  = c.fg_gutter   -- bright black
  vim.g.terminal_color_9  = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.orange
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.purple
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
end

-- Autocommand: apply bg_alt to sidebar/floating windows
function util.contrast(c)
  local group = vim.api.nvim_create_augroup("GitlabLightContrast", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    group   = group,
    pattern = {
      "NvimTree", "neo-tree", "packer", "qf", "NvimTree_*",
      "aerial", "Outline", "toggleterm",
    },
    callback = function()
      vim.api.nvim_win_set_option(0, "winhighlight",
        "Normal:NormalFloat,NormalNC:NormalFloat")
    end,
  })
end

-- Main loader
function util.load()
  local theme  = require("gitlab-light.theme")
  local colors = require("gitlab-light.colors")
  local c      = colors.load()

  -- Reset
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background       = "light"
  vim.opt.termguicolors  = true
  vim.g.colors_name      = "gitlab-light"

  -- Load all highlight groups
  theme.loadEditor(c)
  theme.loadSyntax(c)
  theme.loadTreeSitter(c)
  theme.loadFiletypes(c)
  theme.loadLSP(c)
  theme.loadPlugins(c)

  -- Extras
  if vim.g.gitlab_light_contrast then
    util.contrast(c)
  end
  util.loadTerminal(c)
end

return util

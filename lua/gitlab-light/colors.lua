local colors = {}

-- GitLab Light palette
-- Source: GitLab Light iTerm2 color scheme
colors.palette = {
  -- Core
  bg          = "#FAFAFF", -- iTerm Background
  fg          = "#303030", -- iTerm Foreground
  selection   = "#AD95E9", -- iTerm Selection
  link        = "#165390", -- iTerm Link

  -- ANSI colors
  red         = "#A31700", -- Ansi 1 — keywords, errors
  green       = "#0A7F3D", -- Ansi 2 — strings, hints
  orange      = "#AF551D", -- Ansi 3 — numbers, warnings
  blue        = "#006CD8", -- Ansi 4 — functions, info
  purple      = "#583CAC", -- Ansi 5 — types
  cyan        = "#00798A", -- Ansi 6 — builtins, operators

  -- Derived
  bg_alt      = "#F0F0FA", -- sidebar, float, panels
  bg_highlight= "#EFEFFC", -- cursorline, visual
  border      = "#D0D0E8", -- window separators
  fg_gutter   = "#A0A0C0", -- line numbers, gutter
  fg_comment  = "#7878A8", -- comments (muted purple-blue)
  fg_alt      = "#585870", -- secondary text, parameters

  none        = "NONE",
}

function colors.load()
  local c = vim.deepcopy(colors.palette)

  -- Config toggles
  local contrast           = vim.g.gitlab_light_contrast
  local borders            = vim.g.gitlab_light_borders
  local disable_background = vim.g.gitlab_light_disable_background
  local italic             = vim.g.gitlab_light_italic
  local bold               = vim.g.gitlab_light_bold

  -- Contrast: use bg_alt for sidebar/floats vs bg
  if not contrast then
    c.bg_alt = c.bg
  end

  -- Borders: invisible vs colored
  if not borders then
    c.border = c.bg
  end

  -- Transparent background
  if disable_background then
    c.bg     = c.none
    c.bg_alt = c.none
  end

  -- Italic / bold stripped if disabled
  c.italic = italic  ~= false and "italic"  or c.none
  c.bold   = bold    ~= false and "bold"    or c.none

  return c
end

return colors

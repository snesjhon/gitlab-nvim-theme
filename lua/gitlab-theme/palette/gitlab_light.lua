-- GitLab Light palette
-- Source: GitLab Light iTerm2 color scheme
local palette = {
  -- Core
  bg          = "#FAFAFF", -- iTerm Background
  fg          = "#303030", -- iTerm Foreground
  selection   = "#AD95E9", -- iTerm Selection
  link        = "#165390", -- iTerm Link

  -- ANSI colors (semantic roles)
  red         = "#A31700", -- keywords, errors
  green       = "#0A7F3D", -- strings, hints
  orange      = "#AF551D", -- numbers, warnings
  blue        = "#006CD8", -- functions, info
  purple      = "#583CAC", -- types
  cyan        = "#00798A", -- builtins, operators

  -- Derived
  bg_alt      = "#F0F0FA", -- sidebar, float, panels
  bg_highlight= "#EFEFFC", -- cursorline, visual
  border      = "#D0D0E8", -- window separators
  fg_gutter   = "#A0A0C0", -- line numbers, gutter
  fg_comment  = "#7878A8", -- comments (muted purple-blue)
  fg_alt      = "#585870", -- secondary text, parameters

  none        = "NONE",
}

return palette

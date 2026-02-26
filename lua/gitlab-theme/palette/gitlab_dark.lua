-- GitLab Dark palette
-- Source: GitLab Dark iTerm2 color scheme
-- https://github.com/mbadolato/iTerm2-Color-Schemes
local palette = {
  -- Core
  bg          = "#282827", -- iTerm Background
  fg          = "#FFFFFF", -- iTerm Foreground
  selection   = "#AD94E8", -- iTerm Selection
  link        = "#BFA5C0", -- iTerm Link

  -- ANSI colors (semantic roles — dark variants)
  red         = "#F68070", -- Ansi 1 — keywords, errors
  green       = "#52B872", -- Ansi 2 — strings, hints
  orange      = "#D99646", -- Ansi 3 — numbers, warnings
  blue        = "#7FB5EE", -- Ansi 4 — functions, info
  purple      = "#AD94E8", -- selection reused as purple — types
  pink        = "#F88BAD", -- Ansi 5 — special/tags
  cyan        = "#32C5D2", -- Ansi 6 — operators, builtins

  -- Derived
  bg_alt      = "#222221", -- sidebar, float (slightly darker than bg)
  bg_highlight= "#313130", -- cursorline (slightly lighter than bg)
  -- sel_bg: ~40% of selection (#AD94E8) blended into bg (#282827)
  sel_bg      = "#4A4272", -- Visual / Telescope selection
  border      = "#424240", -- window separators
  fg_gutter   = "#666664", -- line numbers, gutter (Ansi 8 inspired)
  fg_comment  = "#8B7AA0", -- comments (muted purple-gray)
  fg_alt      = "#AEADA8", -- secondary text, parameters

  -- Diff / diagnostic / dap backgrounds (dark variants)
  diff_add_bg    = "#1F3828", -- dark green tint
  diff_change_bg = "#342A12", -- dark amber tint
  diff_delete_bg = "#361919", -- dark red tint
  diff_text_bg   = "#4A3A18", -- darker amber (inline diff)
  vt_error_bg    = "#361919",
  vt_warn_bg     = "#342A12",
  vt_info_bg     = "#1A2838", -- dark blue tint
  vt_hint_bg     = "#1F3828",
  dap_stop_bg    = "#1F3828",

  none        = "NONE",
}

return palette

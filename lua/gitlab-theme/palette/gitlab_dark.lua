-- GitLab Dark palette
-- Source: Ghostty / mbadolato iTerm2-Color-Schemes — "GitLab Dark"
-- Reference: github.com/mbadolato/iTerm2-Color-Schemes (ghostty/GitLab Dark)
local palette = {
  -- Core
  bg          = "#28262B", -- background
  fg          = "#FFFFFF", -- foreground
  selection   = "#AD95E9", -- selection background
  link        = "#BFA5C0", -- link color

  -- ANSI palette (exact values from Ghostty theme)
  red         = "#F57F6C", -- Ansi 1 — keywords, errors
  green       = "#52B87A", -- Ansi 2 — strings, hints
  orange      = "#D99530", -- Ansi 3 — numbers, warnings
  blue        = "#7FB6ED", -- Ansi 4 — functions, info
  purple      = "#AD95E9", -- selection reused (light purple on dark) — types
  pink        = "#F88AAF", -- Ansi 5 — special/tags
  cyan        = "#32C5D2", -- Ansi 6 — operators, builtins

  -- Derived from bg (#28262B)
  bg_alt      = "#222025", -- sidebar, float (slightly darker)
  bg_highlight= "#312F35", -- cursorline (slightly lighter)
  -- sel_bg: 40% of selection (#AD95E9) blended into bg (#28262B)
  -- R=round(0x28*0.6+0xAD*0.4)=5D  G=round(0x26*0.6+0x95*0.4)=52  B=round(0x2B*0.6+0xE9*0.4)=77
  sel_bg      = "#5D5277", -- Visual / Telescope selection
  border      = "#3E3C42", -- window separators
  fg_gutter   = "#666666", -- line numbers, gutter (Ansi 8 exact)
  fg_comment  = "#8B7AA0", -- comments (muted purple-gray)
  fg_alt      = "#AEADA8", -- secondary text, parameters

  -- Diff / diagnostic / dap backgrounds (dark tints)
  diff_add_bg    = "#1F3828", -- dark green tint
  diff_change_bg = "#342A12", -- dark amber tint
  diff_delete_bg = "#36191A", -- dark red tint
  diff_text_bg   = "#4A3A18", -- darker amber (inline diff)
  vt_error_bg    = "#36191A",
  vt_warn_bg     = "#342A12",
  vt_info_bg     = "#1A2838", -- dark blue tint
  vt_hint_bg     = "#1F3828",
  dap_stop_bg    = "#1F3828",

  none        = "NONE",
}

return palette

local util = require("gitlab-light.util")

local M = {}

-- Load and apply the colorscheme
function M.set()
  util.load()
end

-- Bufferline theme integration
-- Usage: bufferline.setup({ highlights = require("gitlab-light").bufferline() })
function M.bufferline()
  local c = require("gitlab-light.colors").load()

  return {
    fill = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    background = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    buffer_selected = {
      fg = c.fg,
      bg = c.bg,
      bold = true,
      italic = false,
    },
    buffer_visible = {
      fg = c.fg,
      bg = c.bg_alt,
    },
    close_button = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    close_button_selected = {
      fg = c.red,
      bg = c.bg,
    },
    close_button_visible = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    separator = {
      fg = c.border,
      bg = c.bg_alt,
    },
    separator_selected = {
      fg = c.border,
      bg = c.bg,
    },
    separator_visible = {
      fg = c.border,
      bg = c.bg_alt,
    },
    indicator_selected = {
      fg = c.blue,
      bg = c.bg,
    },
    indicator_visible = {
      fg = c.bg_alt,
      bg = c.bg_alt,
    },
    modified = {
      fg = c.orange,
      bg = c.bg_alt,
    },
    modified_selected = {
      fg = c.orange,
      bg = c.bg,
    },
    modified_visible = {
      fg = c.orange,
      bg = c.bg_alt,
    },
    error = {
      fg = c.red,
      bg = c.bg_alt,
    },
    error_selected = {
      fg = c.red,
      bg = c.bg,
      bold = true,
    },
    error_visible = {
      fg = c.red,
      bg = c.bg_alt,
    },
    warning = {
      fg = c.orange,
      bg = c.bg_alt,
    },
    warning_selected = {
      fg = c.orange,
      bg = c.bg,
      bold = true,
    },
    warning_visible = {
      fg = c.orange,
      bg = c.bg_alt,
    },
    info = {
      fg = c.blue,
      bg = c.bg_alt,
    },
    info_selected = {
      fg = c.blue,
      bg = c.bg,
      bold = true,
    },
    info_visible = {
      fg = c.blue,
      bg = c.bg_alt,
    },
    hint = {
      fg = c.green,
      bg = c.bg_alt,
    },
    hint_selected = {
      fg = c.green,
      bg = c.bg,
      bold = true,
    },
    hint_visible = {
      fg = c.green,
      bg = c.bg_alt,
    },
    tab = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    tab_selected = {
      fg = c.blue,
      bg = c.bg,
      bold = true,
    },
    tab_close = {
      fg = c.red,
      bg = c.bg_alt,
    },
    tab_separator = {
      fg = c.border,
      bg = c.bg_alt,
    },
    tab_separator_selected = {
      fg = c.border,
      bg = c.bg,
    },
    numbers = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    numbers_selected = {
      fg = c.blue,
      bg = c.bg,
      bold = true,
    },
    numbers_visible = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
    duplicate = {
      fg = c.fg_comment,
      bg = c.bg_alt,
      italic = true,
    },
    duplicate_selected = {
      fg = c.fg_comment,
      bg = c.bg,
      italic = true,
    },
    duplicate_visible = {
      fg = c.fg_comment,
      bg = c.bg_alt,
      italic = true,
    },
    trunc_marker = {
      fg = c.fg_gutter,
      bg = c.bg_alt,
    },
  }
end

return M

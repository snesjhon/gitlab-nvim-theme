local M = {}

-- Default config
local defaults = {
  contrast    = true,   -- bg_alt for sidebars / floats
  borders     = true,   -- colored window separators
  italic      = true,   -- italic comments / parameters
  bold        = true,   -- bold keywords / types
  transparent = false,  -- transparent background
}

-- Active config (merged with user opts via setup())
local config = vim.deepcopy(defaults)

---Configure the theme. Call before load() / colorscheme.
---@param opts? table
function M.setup(opts)
  config = vim.tbl_deep_extend("force", defaults, opts or {})
end

---Load and apply a theme variant.
---@param opts? { theme?: string }
function M.load(opts)
  opts = opts or {}
  local theme_name = opts.theme or "gitlab_light"
  require("gitlab-theme.util").load(theme_name, config)
end

---Bufferline highlight table for the current config.
---@param opts? { theme?: string }
---@return table
function M.bufferline(opts)
  opts = opts or {}
  local theme_name = opts.theme or "gitlab_light"
  local palette    = require("gitlab-theme.palette")
  local util       = require("gitlab-theme.util")
  local raw        = palette.load(theme_name)
  local c          = util.applyConfig(raw, config)

  return {
    fill                      = { fg = c.fg_gutter,  bg = c.bg_alt },
    background                = { fg = c.fg_gutter,  bg = c.bg_alt },
    buffer_selected           = { fg = c.fg,         bg = c.bg,     bold = true, italic = false },
    buffer_visible            = { fg = c.fg,         bg = c.bg_alt },
    close_button              = { fg = c.fg_gutter,  bg = c.bg_alt },
    close_button_selected     = { fg = c.red,        bg = c.bg },
    close_button_visible      = { fg = c.fg_gutter,  bg = c.bg_alt },
    separator                 = { fg = c.border,     bg = c.bg_alt },
    separator_selected        = { fg = c.border,     bg = c.bg },
    separator_visible         = { fg = c.border,     bg = c.bg_alt },
    indicator_selected        = { fg = c.blue,       bg = c.bg },
    indicator_visible         = { fg = c.bg_alt,     bg = c.bg_alt },
    modified                  = { fg = c.orange,     bg = c.bg_alt },
    modified_selected         = { fg = c.orange,     bg = c.bg },
    modified_visible          = { fg = c.orange,     bg = c.bg_alt },
    error                     = { fg = c.red,        bg = c.bg_alt },
    error_selected            = { fg = c.red,        bg = c.bg,     bold = true },
    error_visible             = { fg = c.red,        bg = c.bg_alt },
    warning                   = { fg = c.orange,     bg = c.bg_alt },
    warning_selected          = { fg = c.orange,     bg = c.bg,     bold = true },
    warning_visible           = { fg = c.orange,     bg = c.bg_alt },
    info                      = { fg = c.blue,       bg = c.bg_alt },
    info_selected             = { fg = c.blue,       bg = c.bg,     bold = true },
    info_visible              = { fg = c.blue,       bg = c.bg_alt },
    hint                      = { fg = c.green,      bg = c.bg_alt },
    hint_selected             = { fg = c.green,      bg = c.bg,     bold = true },
    hint_visible              = { fg = c.green,      bg = c.bg_alt },
    tab                       = { fg = c.fg_gutter,  bg = c.bg_alt },
    tab_selected              = { fg = c.blue,       bg = c.bg,     bold = true },
    tab_close                 = { fg = c.red,        bg = c.bg_alt },
    tab_separator             = { fg = c.border,     bg = c.bg_alt },
    tab_separator_selected    = { fg = c.border,     bg = c.bg },
    numbers                   = { fg = c.fg_gutter,  bg = c.bg_alt },
    numbers_selected          = { fg = c.blue,       bg = c.bg,     bold = true },
    numbers_visible           = { fg = c.fg_gutter,  bg = c.bg_alt },
    duplicate                 = { fg = c.fg_comment, bg = c.bg_alt, italic = true },
    duplicate_selected        = { fg = c.fg_comment, bg = c.bg,     italic = true },
    duplicate_visible         = { fg = c.fg_comment, bg = c.bg_alt, italic = true },
    trunc_marker              = { fg = c.fg_gutter,  bg = c.bg_alt },
  }
end

return M

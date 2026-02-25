local M = {}

-- Map theme name → palette module
local themes = {
  gitlab_light = "gitlab-theme.palette.gitlab_light",
  -- gitlab_dark  = "gitlab-theme.palette.gitlab_dark",  -- coming soon
}

---Load the raw palette for a given theme name.
---@param theme string e.g. "gitlab_light"
---@return table
function M.load(theme)
  local mod = themes[theme]
  if not mod then
    local valid = vim.tbl_keys(themes)
    error(string.format(
      "[gitlab-nvim-theme] Unknown theme %q. Valid themes: %s",
      theme,
      table.concat(valid, ", ")
    ))
  end
  return require(mod)
end

---All registered theme names.
M.themes = vim.tbl_keys(themes)

return M

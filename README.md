# gitlab-light.nvim

A Neovim colorscheme based on the [GitLab Light](https://gitlab.com) iTerm2 color scheme.
Clean, readable, and easy on the eyes — built for long coding sessions on a light background.

## Features

- Full Tree-sitter highlight coverage (`@` semantic groups)
- LSP diagnostics, semantic tokens (`@lsp.type.*`), inlay hints
- Plugin support: Telescope, nvim-tree, bufferline, lualine, GitSigns, Neogit, nvim-cmp, indent-blankline, Trouble, nvim-notify, Leap, Dashboard/Alpha, which-key, rainbow delimiters, Mini.nvim, nvim-dap
- Config toggles via `vim.g.*` globals (contrast, borders, italic, bold, transparent bg)
- Bufferline theme integration helper

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "snesjhon/gitlab-light.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional: configure before loading colorscheme
    vim.g.gitlab_light_contrast           = true   -- bg_alt for sidebars/floats
    vim.g.gitlab_light_borders            = true   -- colored window borders
    vim.g.gitlab_light_italic             = true   -- enable italic text
    vim.g.gitlab_light_bold               = true   -- enable bold text
    vim.g.gitlab_light_disable_background = false  -- transparent background

    vim.cmd.colorscheme("gitlab-light")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "snesjhon/gitlab-light.nvim",
  config = function()
    vim.cmd.colorscheme("gitlab-light")
  end,
})
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'snesjhon/gitlab-light.nvim'
colorscheme gitlab-light
```

## Configuration

All options are set via global variables **before** calling `colorscheme`:

| Variable | Default | Description |
|---|---|---|
| `vim.g.gitlab_light_contrast` | `true` | Use `bg_alt` (`#F0F0FA`) for sidebars, floats, and panels |
| `vim.g.gitlab_light_borders` | `true` | Show colored window separators |
| `vim.g.gitlab_light_italic` | `true` | Enable italic in comments, parameters |
| `vim.g.gitlab_light_bold` | `true` | Enable bold in keywords, types |
| `vim.g.gitlab_light_disable_background` | `false` | Transparent background (for terminal transparency) |

## Bufferline Integration

```lua
require("bufferline").setup({
  highlights = require("gitlab-light").bufferline(),
})
```

## Color Palette

| Role | Hex | Usage |
|------|-----|-------|
| Background | `#FAFAFF` | Main editor background |
| Foreground | `#303030` | Default text |
| Red | `#A31700` | Keywords, errors |
| Green | `#0A7F3D` | Strings, hints |
| Orange | `#AF551D` | Numbers, warnings |
| Blue | `#006CD8` | Functions, info |
| Purple | `#583CAC` | Types, structs |
| Cyan | `#00798A` | Operators, builtins |
| Comments | `#7878A8` | Muted purple-blue |

## Local Development

```lua
-- Add to lazy.nvim config for local testing:
{
  dir = "~/Developer/gitlab-light.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("gitlab-light")
  end,
}
```

## License

MIT — see [LICENSE](LICENSE)

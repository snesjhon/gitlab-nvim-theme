# gitlab-nvim-theme

A Neovim colorscheme based on the [GitLab](https://gitlab.com) color palette. Supports multiple variants, with more on the way.

| Variant | Status |
|---------|--------|
| `gitlab_light` | ✅ Available |
| `gitlab_dark` | 🚧 Coming soon |

## Features

- Full Tree-sitter highlight coverage (`@` semantic groups)
- LSP diagnostics, semantic tokens (`@lsp.type.*`), inlay hints
- Plugin support: Telescope, nvim-tree, bufferline, lualine, GitSigns, Neogit, nvim-cmp, indent-blankline, Trouble, nvim-notify, Leap, Dashboard/Alpha, which-key, rainbow delimiters, Mini.nvim, nvim-dap
- `setup()` config table (contrast, borders, italic, bold, transparent bg)
- Bufferline theme integration helper

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "snesjhon/gitlab-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("gitlab-theme").setup({
      contrast    = true,   -- bg_alt for sidebars / floats
      borders     = true,   -- colored window separators
      italic      = true,   -- italic in comments, parameters
      bold        = true,   -- bold keywords, types
      transparent = false,  -- transparent background
    })

    vim.cmd.colorscheme("gitlab_light")
  end,
}
```

You can also call `load()` directly instead of using `:colorscheme`:

```lua
require("gitlab-theme").load({ theme = "gitlab_light" })
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  "snesjhon/gitlab-nvim-theme",
  config = function()
    require("gitlab-theme").setup({})
    vim.cmd.colorscheme("gitlab_light")
  end,
})
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'snesjhon/gitlab-nvim-theme'
lua require("gitlab-theme").setup({})
colorscheme gitlab_light
```

## Configuration

```lua
require("gitlab-theme").setup({
  contrast    = true,   -- use bg_alt (#F0F0FA) for sidebars, floats, panels
  borders     = true,   -- colored WinSeparator / VertSplit
  italic      = true,   -- italic comments, parameters
  bold        = true,   -- bold keywords, types
  transparent = false,  -- transparent background (for terminal transparency)
})
```

## Bufferline Integration

```lua
require("bufferline").setup({
  highlights = require("gitlab-theme").bufferline({ theme = "gitlab_light" }),
})
```

## Color Palette (`gitlab_light`)

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
{
  dir = "~/Developer/gitlab-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("gitlab-theme").setup({ contrast = true })
    vim.cmd.colorscheme("gitlab_light")
  end,
}
```

## License

MIT — see [LICENSE](LICENSE)

local util  = require("gitlab-theme.util")
local theme = {}

-- ── 1. Editor ─────────────────────────────────────────────────────────────────
function theme.loadEditor(c)
  util.loadColorSet({
    -- Base
    Normal         = { fg = c.fg,         bg = c.bg },
    NormalNC       = { fg = c.fg,         bg = c.bg },
    NormalFloat    = { fg = c.fg,         bg = c.bg_alt },
    FloatBorder    = { fg = c.border,     bg = c.bg_alt },
    FloatTitle     = { fg = c.blue,       bg = c.bg_alt, style = "bold" },

    -- Cursor & visual
    Cursor         = { fg = c.bg,         bg = c.fg },
    CursorIM       = { fg = c.bg,         bg = c.fg },
    CursorLine     = { bg = c.bg_highlight },
    CursorLineNr   = { fg = c.blue,       bg = c.bg_highlight, style = "bold" },
    CursorColumn   = { bg = c.bg_highlight },
    ColorColumn    = { bg = c.bg_alt },
    Visual         = { bg = c.bg_highlight },
    VisualNOS      = { bg = c.bg_highlight },

    -- Line numbers / gutter
    LineNr         = { fg = c.fg_gutter },
    SignColumn     = { fg = c.fg_gutter,  bg = c.bg },
    FoldColumn     = { fg = c.fg_gutter,  bg = c.bg },
    Folded         = { fg = c.fg_comment, bg = c.bg_alt },

    -- Search
    Search         = { fg = c.bg,         bg = c.orange },
    IncSearch      = { fg = c.bg,         bg = c.red },
    CurSearch      = { fg = c.bg,         bg = c.red },
    Substitute     = { fg = c.bg,         bg = c.red },
    MatchParen     = { fg = c.cyan,       style = "bold,underline" },

    -- Status / tab line
    StatusLine     = { fg = c.fg,         bg = c.bg_alt },
    StatusLineNC   = { fg = c.fg_gutter,  bg = c.bg_alt },
    TabLine        = { fg = c.fg_gutter,  bg = c.bg_alt },
    TabLineFill    = { bg = c.bg_alt },
    TabLineSel     = { fg = c.fg,         bg = c.bg, style = "bold" },

    -- Window
    WinSeparator   = { fg = c.border,     bg = c.bg },
    VertSplit      = { fg = c.border,     bg = c.bg },

    -- Popup menu
    Pmenu          = { fg = c.fg,         bg = c.bg_alt },
    PmenuSel       = { fg = c.bg,         bg = c.blue },
    PmenuSbar      = { bg = c.bg_alt },
    PmenuThumb     = { bg = c.border },

    -- Messages
    MsgArea        = { fg = c.fg,         bg = c.bg },
    ModeMsg        = { fg = c.fg,         style = "bold" },
    MoreMsg        = { fg = c.green,      style = "bold" },
    ErrorMsg       = { fg = c.red,        style = "bold" },
    WarningMsg     = { fg = c.orange,     style = "bold" },
    Question       = { fg = c.blue,       style = "bold" },

    -- Spell
    SpellBad       = { sp = c.red,        style = "undercurl" },
    SpellCap       = { sp = c.orange,     style = "undercurl" },
    SpellRare      = { sp = c.purple,     style = "undercurl" },
    SpellLocal     = { sp = c.cyan,       style = "undercurl" },

    -- Diff
    DiffAdd        = { fg = c.green,      bg = "#E6F4EC" },
    DiffChange     = { fg = c.orange,     bg = "#FDF3E6" },
    DiffDelete     = { fg = c.red,        bg = "#FAEAE8" },
    DiffText       = { fg = c.orange,     bg = "#F9E3C8", style = "bold" },
    diffAdded      = { fg = c.green },
    diffChanged    = { fg = c.orange },
    diffRemoved    = { fg = c.red },
    diffFile       = { fg = c.blue,       style = "bold" },
    diffLine       = { fg = c.fg_comment },
    diffIndexLine  = { fg = c.cyan },

    -- Misc
    Directory      = { fg = c.blue,       style = "bold" },
    Title          = { fg = c.blue,       style = "bold" },
    NonText        = { fg = c.fg_gutter },
    SpecialKey     = { fg = c.fg_gutter },
    Whitespace     = { fg = c.border },
    EndOfBuffer    = { fg = c.bg },
    WildMenu       = { fg = c.bg,         bg = c.blue },
    Conceal        = { fg = c.fg_comment },

    -- Quickfix
    QuickFixLine   = { bg = c.bg_highlight, style = "bold" },
    qfLineNr       = { fg = c.fg_gutter },
    qfFileName     = { fg = c.blue },
  })
end

-- ── 2. Syntax ─────────────────────────────────────────────────────────────────
function theme.loadSyntax(c)
  util.loadColorSet({
    Comment        = { fg = c.fg_comment, style = c.italic },
    SpecialComment = { fg = c.fg_comment, style = c.italic },

    Constant       = { fg = c.orange },
    String         = { fg = c.green },
    Character      = { fg = c.green },
    Number         = { fg = c.orange },
    Boolean        = { fg = c.orange, style = c.bold },
    Float          = { fg = c.orange },

    Identifier     = { fg = c.fg },
    Function       = { fg = c.blue },

    Statement      = { fg = c.red, style = c.bold },
    Conditional    = { fg = c.red, style = c.bold },
    Repeat         = { fg = c.red, style = c.bold },
    Label          = { fg = c.red },
    Operator       = { fg = c.cyan },
    Keyword        = { fg = c.red, style = c.bold },
    Exception      = { fg = c.red, style = c.bold },

    PreProc        = { fg = c.purple },
    Include        = { fg = c.purple },
    Define         = { fg = c.purple },
    Macro          = { fg = c.purple },
    PreCondit      = { fg = c.purple },

    Type           = { fg = c.purple },
    StorageClass   = { fg = c.purple, style = c.bold },
    Structure      = { fg = c.purple },
    Typedef        = { fg = c.purple },

    Special        = { fg = c.cyan },
    SpecialChar    = { fg = c.cyan },
    Tag            = { fg = c.blue },
    Delimiter      = { fg = c.fg_alt },

    Underlined     = { style = "underline" },
    Bold           = { style = "bold" },
    Italic         = { style = "italic" },

    Error          = { fg = c.red, style = "bold,underline" },
    Todo           = { fg = c.bg, bg = c.orange, style = "bold" },

    healthSuccess  = { fg = c.green, style = "bold" },
    healthError    = { fg = c.red,   style = "bold" },
    healthWarning  = { fg = c.orange },
  })
end

-- ── 3. Tree-sitter ────────────────────────────────────────────────────────────
function theme.loadTreeSitter(c)
  util.loadColorSet({
    -- Comments
    ["@comment"]               = { fg = c.fg_comment, style = c.italic },
    ["@comment.documentation"] = { fg = c.fg_comment, style = c.italic },
    ["@comment.todo"]          = { fg = c.bg,         bg = c.orange, style = "bold" },
    ["@comment.error"]         = { fg = c.bg,         bg = c.red,    style = "bold" },
    ["@comment.note"]          = { fg = c.cyan,       style = c.italic },

    -- Functions / methods
    ["@function"]              = { fg = c.blue },
    ["@function.call"]         = { fg = c.blue },
    ["@function.builtin"]      = { fg = c.cyan, style = c.bold },
    ["@function.macro"]        = { fg = c.purple },
    ["@method"]                = { fg = c.blue },
    ["@method.call"]           = { fg = c.blue },
    ["@constructor"]           = { fg = c.purple },

    -- Variables
    ["@variable"]              = { fg = c.fg },
    ["@variable.parameter"]    = { fg = c.fg_alt, style = c.italic },
    ["@variable.member"]       = { fg = c.fg },
    ["@variable.builtin"]      = { fg = c.cyan, style = c.italic },

    -- Types
    ["@type"]                  = { fg = c.purple },
    ["@type.builtin"]          = { fg = c.purple, style = c.bold },
    ["@type.definition"]       = { fg = c.purple, style = c.bold },
    ["@type.qualifier"]        = { fg = c.red,    style = c.bold },

    -- Keywords
    ["@keyword"]               = { fg = c.red, style = c.bold },
    ["@keyword.function"]      = { fg = c.red, style = c.bold },
    ["@keyword.operator"]      = { fg = c.cyan },
    ["@keyword.return"]        = { fg = c.red, style = c.bold },
    ["@keyword.import"]        = { fg = c.purple },
    ["@keyword.modifier"]      = { fg = c.red, style = c.bold },

    -- Strings
    ["@string"]                = { fg = c.green },
    ["@string.regex"]          = { fg = c.cyan },
    ["@string.escape"]         = { fg = c.cyan, style = "bold" },
    ["@string.special"]        = { fg = c.cyan },
    ["@string.special.url"]    = { fg = c.link, style = "underline" },

    -- Literals
    ["@number"]                = { fg = c.orange },
    ["@number.float"]          = { fg = c.orange },
    ["@float"]                 = { fg = c.orange },
    ["@boolean"]               = { fg = c.orange, style = c.bold },

    -- Operators / punctuation
    ["@operator"]                    = { fg = c.cyan },
    ["@punctuation.bracket"]         = { fg = c.fg_alt },
    ["@punctuation.delimiter"]       = { fg = c.fg_alt },
    ["@punctuation.special"]         = { fg = c.cyan },

    -- Tags (HTML/JSX)
    ["@tag"]                   = { fg = c.red },
    ["@tag.attribute"]         = { fg = c.orange },
    ["@tag.delimiter"]         = { fg = c.fg_alt },
    ["@tag.builtin"]           = { fg = c.red, style = c.bold },

    -- Identifiers
    ["@property"]              = { fg = c.fg },
    ["@constant"]              = { fg = c.orange, style = c.bold },
    ["@constant.builtin"]      = { fg = c.cyan,   style = c.bold },
    ["@constant.macro"]        = { fg = c.purple },
    ["@namespace"]             = { fg = c.fg_alt },
    ["@module"]                = { fg = c.fg_alt },
    ["@label"]                 = { fg = c.red },
    ["@attribute"]             = { fg = c.orange },

    -- Markup (Markdown etc.)
    ["@markup.heading"]        = { fg = c.blue,   style = "bold" },
    ["@markup.italic"]         = { style = "italic" },
    ["@markup.bold"]           = { style = "bold" },
    ["@markup.strikethrough"]  = { style = "strikethrough" },
    ["@markup.underline"]      = { style = "underline" },
    ["@markup.link"]           = { fg = c.link,   style = "underline" },
    ["@markup.link.label"]     = { fg = c.blue },
    ["@markup.link.url"]       = { fg = c.link,   style = "underline" },
    ["@markup.raw"]            = { fg = c.green,  bg = c.bg_alt },
    ["@markup.list"]           = { fg = c.red },
    ["@markup.list.checked"]   = { fg = c.green },
    ["@markup.list.unchecked"] = { fg = c.fg_gutter },
  })
end

-- ── 4. Filetypes ──────────────────────────────────────────────────────────────
function theme.loadFiletypes(c)
  util.loadColorSet({
    -- YAML
    yamlBlockMappingKey      = { fg = c.blue },
    yamlKeyValueDelimiter    = { fg = c.cyan },
    yamlBool                 = { fg = c.orange, style = c.bold },
    yamlNull                 = { fg = c.fg_comment },
    yamlString               = { fg = c.green },
    yamlInteger              = { fg = c.orange },
    yamlFloat                = { fg = c.orange },
    yamlAnchor               = { fg = c.purple },
    yamlAlias                = { fg = c.purple },
    yamlTag                  = { fg = c.cyan },
    yamlDocumentStart        = { fg = c.fg_comment },
    yamlDocumentEnd          = { fg = c.fg_comment },

    -- Markdown
    markdownH1               = { fg = c.red,    style = "bold" },
    markdownH2               = { fg = c.orange, style = "bold" },
    markdownH3               = { fg = c.green,  style = "bold" },
    markdownH4               = { fg = c.blue,   style = "bold" },
    markdownH5               = { fg = c.purple, style = "bold" },
    markdownH6               = { fg = c.cyan,   style = "bold" },
    markdownHeadingDelimiter = { fg = c.fg_gutter },
    markdownCode             = { fg = c.green,  bg = c.bg_alt },
    markdownCodeBlock        = { fg = c.green },
    markdownLinkText         = { fg = c.blue },
    markdownUrl              = { fg = c.link,   style = "underline" },
    markdownBold             = { style = "bold" },
    markdownItalic           = { style = "italic" },
    markdownListMarker       = { fg = c.red },
    markdownRule             = { fg = c.fg_gutter },

    -- HTML
    htmlTag                  = { fg = c.fg_alt },
    htmlEndTag               = { fg = c.fg_alt },
    htmlTagName              = { fg = c.red },
    htmlArg                  = { fg = c.orange },
    htmlString               = { fg = c.green },
    htmlSpecialChar          = { fg = c.cyan },
    htmlLink                 = { fg = c.link,   style = "underline" },
    htmlBold                 = { style = "bold" },
    htmlItalic               = { style = "italic" },

    -- JSON
    jsonKeyword              = { fg = c.blue },
    jsonString               = { fg = c.green },
    jsonNumber               = { fg = c.orange },
    jsonBoolean              = { fg = c.orange, style = c.bold },
    jsonNull                 = { fg = c.fg_comment },
    jsonBraces               = { fg = c.fg_alt },

    -- Shell
    shVariable               = { fg = c.fg },
    shDeref                  = { fg = c.fg },
    shQuote                  = { fg = c.green },
    shCommandSub             = { fg = c.cyan },
    shSpecial                = { fg = c.cyan },
    shStatement              = { fg = c.red,    style = c.bold },
  })
end

-- ── 5. LSP ────────────────────────────────────────────────────────────────────
function theme.loadLSP(c)
  util.loadColorSet({
    -- Diagnostics
    DiagnosticError              = { fg = c.red },
    DiagnosticWarn               = { fg = c.orange },
    DiagnosticInfo               = { fg = c.blue },
    DiagnosticHint               = { fg = c.green },
    DiagnosticOk                 = { fg = c.green },

    DiagnosticVirtualTextError   = { fg = c.red,    bg = "#FAEAE8", style = c.italic },
    DiagnosticVirtualTextWarn    = { fg = c.orange, bg = "#FDF3E6", style = c.italic },
    DiagnosticVirtualTextInfo    = { fg = c.blue,   bg = "#E8F0FD", style = c.italic },
    DiagnosticVirtualTextHint    = { fg = c.green,  bg = "#E6F4EC", style = c.italic },

    DiagnosticUnderlineError     = { sp = c.red,    style = "undercurl" },
    DiagnosticUnderlineWarn      = { sp = c.orange, style = "undercurl" },
    DiagnosticUnderlineInfo      = { sp = c.blue,   style = "underline" },
    DiagnosticUnderlineHint      = { sp = c.green,  style = "underline" },

    DiagnosticFloatingError      = { fg = c.red,    bg = c.bg_alt },
    DiagnosticFloatingWarn       = { fg = c.orange, bg = c.bg_alt },
    DiagnosticFloatingInfo       = { fg = c.blue,   bg = c.bg_alt },
    DiagnosticFloatingHint       = { fg = c.green,  bg = c.bg_alt },

    DiagnosticSignError          = { fg = c.red },
    DiagnosticSignWarn           = { fg = c.orange },
    DiagnosticSignInfo           = { fg = c.blue },
    DiagnosticSignHint           = { fg = c.green },

    -- References
    LspReferenceText             = { bg = c.bg_highlight },
    LspReferenceRead             = { bg = c.bg_highlight },
    LspReferenceWrite            = { bg = c.bg_highlight, style = "bold" },

    -- Code lens / inlay hints
    LspCodeLens                  = { fg = c.fg_comment, style = c.italic },
    LspCodeLensSeparator         = { fg = c.fg_gutter },
    LspInlayHint                 = { fg = c.fg_comment, bg = c.bg_alt, style = c.italic },

    -- Signature help
    LspSignatureActiveParameter  = { fg = c.orange, style = "bold,underline" },

    -- Semantic tokens
    ["@lsp.type.class"]          = { fg = c.purple },
    ["@lsp.type.decorator"]      = { fg = c.orange },
    ["@lsp.type.enum"]           = { fg = c.purple },
    ["@lsp.type.enumMember"]     = { fg = c.orange, style = c.bold },
    ["@lsp.type.function"]       = { fg = c.blue },
    ["@lsp.type.interface"]      = { fg = c.purple, style = c.bold },
    ["@lsp.type.keyword"]        = { fg = c.red,    style = c.bold },
    ["@lsp.type.macro"]          = { fg = c.purple },
    ["@lsp.type.method"]         = { fg = c.blue },
    ["@lsp.type.namespace"]      = { fg = c.fg_alt },
    ["@lsp.type.number"]         = { fg = c.orange },
    ["@lsp.type.operator"]       = { fg = c.cyan },
    ["@lsp.type.parameter"]      = { fg = c.fg_alt, style = c.italic },
    ["@lsp.type.property"]       = { fg = c.fg },
    ["@lsp.type.string"]         = { fg = c.green },
    ["@lsp.type.struct"]         = { fg = c.purple },
    ["@lsp.type.type"]           = { fg = c.purple },
    ["@lsp.type.typeParameter"]  = { fg = c.purple, style = c.italic },
    ["@lsp.type.variable"]       = { fg = c.fg },
    ["@lsp.mod.deprecated"]      = { style = "strikethrough" },
    ["@lsp.mod.readonly"]        = { style = c.bold },
  })
end

-- ── 6. Plugins ────────────────────────────────────────────────────────────────
function theme.loadPlugins(c)
  util.loadColorSet({
    -- ── Telescope ──────────────────────────────────────────────────────
    TelescopeNormal          = { fg = c.fg,         bg = c.bg_alt },
    TelescopeBorder          = { fg = c.border,     bg = c.bg_alt },
    TelescopePromptNormal    = { fg = c.fg,         bg = c.bg },
    TelescopePromptBorder    = { fg = c.blue,       bg = c.bg },
    TelescopePromptTitle     = { fg = c.bg,         bg = c.blue,  style = "bold" },
    TelescopePreviewTitle    = { fg = c.bg,         bg = c.green, style = "bold" },
    TelescopeResultsTitle    = { fg = c.bg_alt,     bg = c.bg_alt },
    TelescopePromptPrefix    = { fg = c.blue },
    TelescopeSelectionCaret  = { fg = c.orange },
    TelescopeSelection       = { fg = c.fg,         bg = c.bg_highlight },
    TelescopeMatching        = { fg = c.orange,     style = "bold" },
    TelescopeMultiSelection  = { fg = c.purple },

    -- ── nvim-tree ──────────────────────────────────────────────────────
    NvimTreeNormal           = { fg = c.fg,         bg = c.bg_alt },
    NvimTreeNormalFloat      = { fg = c.fg,         bg = c.bg_alt },
    NvimTreeRootFolder       = { fg = c.blue,       style = "bold" },
    NvimTreeFolderIcon       = { fg = c.blue },
    NvimTreeFolderName       = { fg = c.blue },
    NvimTreeOpenedFolderName = { fg = c.blue,       style = "bold" },
    NvimTreeEmptyFolderName  = { fg = c.fg_gutter },
    NvimTreeSymlinkIcon      = { fg = c.cyan },
    NvimTreeSymlink          = { fg = c.cyan },
    NvimTreeExecFile         = { fg = c.green,      style = "bold" },
    NvimTreeSpecialFile      = { fg = c.purple,     style = "bold" },
    NvimTreeGitDirty         = { fg = c.orange },
    NvimTreeGitStaged        = { fg = c.green },
    NvimTreeGitNew           = { fg = c.green },
    NvimTreeGitDeleted       = { fg = c.red },
    NvimTreeGitIgnored       = { fg = c.fg_gutter },
    NvimTreeIndentMarker     = { fg = c.border },
    NvimTreeWinSeparator     = { fg = c.border,     bg = c.bg_alt },

    -- ── NERDTree ───────────────────────────────────────────────────────
    NERDTreeDir              = { fg = c.blue },
    NERDTreeDirSlash         = { fg = c.fg_gutter },
    NERDTreeOpenable         = { fg = c.blue },
    NERDTreeClosable         = { fg = c.blue },
    NERDTreeFile             = { fg = c.fg },
    NERDTreeExecFile         = { fg = c.green },
    NERDTreeUp               = { fg = c.fg_gutter },
    NERDTreeCWD              = { fg = c.blue,       style = "bold" },
    NERDTreeHelp             = { fg = c.fg_comment },

    -- ── Bufferline ─────────────────────────────────────────────────────
    BufferLineBackground        = { fg = c.fg_gutter, bg = c.bg_alt },
    BufferLineBufferSelected    = { fg = c.fg,         bg = c.bg, style = "bold" },
    BufferLineBufferVisible     = { fg = c.fg,         bg = c.bg_alt },
    BufferLineSeparator         = { fg = c.border,     bg = c.bg_alt },
    BufferLineSeparatorSelected = { fg = c.border,     bg = c.bg },
    BufferLineTab               = { fg = c.fg_gutter,  bg = c.bg_alt },
    BufferLineTabSelected       = { fg = c.blue,       bg = c.bg, style = "bold" },
    BufferLineTabClose          = { fg = c.red,        bg = c.bg_alt },
    BufferLineIndicatorSelected = { fg = c.blue,       bg = c.bg },
    BufferLineModified          = { fg = c.orange,     bg = c.bg_alt },
    BufferLineModifiedSelected  = { fg = c.orange,     bg = c.bg },
    BufferLineError             = { fg = c.red,        bg = c.bg_alt },
    BufferLineErrorSelected     = { fg = c.red,        bg = c.bg },
    BufferLineWarning           = { fg = c.orange,     bg = c.bg_alt },
    BufferLineWarningSelected   = { fg = c.orange,     bg = c.bg },

    -- ── GitSigns ───────────────────────────────────────────────────────
    GitSignsAdd              = { fg = c.green },
    GitSignsChange           = { fg = c.orange },
    GitSignsDelete           = { fg = c.red },
    GitSignsAddNr            = { fg = c.green },
    GitSignsChangeNr         = { fg = c.orange },
    GitSignsDeleteNr         = { fg = c.red },
    GitSignsAddLn            = { bg = "#E6F4EC" },
    GitSignsChangeLn         = { bg = "#FDF3E6" },
    GitSignsDeleteLn         = { bg = "#FAEAE8" },
    GitSignsCurrentLineBlame = { fg = c.fg_comment, style = c.italic },

    -- ── Neogit ─────────────────────────────────────────────────────────
    NeogitBranch              = { fg = c.purple, style = "bold" },
    NeogitRemote              = { fg = c.blue },
    NeogitHunkHeader          = { fg = c.fg,    bg = c.bg_alt,       style = "bold" },
    NeogitHunkHeaderHighlight = { fg = c.fg,    bg = c.bg_highlight, style = "bold" },
    NeogitDiffAdd             = { fg = c.green, bg = "#E6F4EC" },
    NeogitDiffDelete          = { fg = c.red,   bg = "#FAEAE8" },
    NeogitDiffContextHighlight= { bg = c.bg_highlight },
    NeogitNotificationInfo    = { fg = c.blue },
    NeogitNotificationWarning = { fg = c.orange },
    NeogitNotificationError   = { fg = c.red },

    -- ── nvim-cmp ───────────────────────────────────────────────────────
    CmpDocumentation         = { fg = c.fg,       bg = c.bg_alt },
    CmpDocumentationBorder   = { fg = c.border,   bg = c.bg_alt },
    CmpItemAbbr              = { fg = c.fg },
    CmpItemAbbrDeprecated    = { fg = c.fg_gutter, style = "strikethrough" },
    CmpItemAbbrMatch         = { fg = c.blue,      style = "bold" },
    CmpItemAbbrMatchFuzzy    = { fg = c.blue,      style = "bold" },
    CmpItemMenu              = { fg = c.fg_comment },
    CmpItemKindDefault       = { fg = c.fg_alt },
    CmpItemKindKeyword       = { fg = c.red },
    CmpItemKindVariable      = { fg = c.fg },
    CmpItemKindConstant      = { fg = c.orange },
    CmpItemKindReference     = { fg = c.orange },
    CmpItemKindValue         = { fg = c.orange },
    CmpItemKindFunction      = { fg = c.blue },
    CmpItemKindMethod        = { fg = c.blue },
    CmpItemKindConstructor   = { fg = c.purple },
    CmpItemKindClass         = { fg = c.purple },
    CmpItemKindInterface     = { fg = c.purple },
    CmpItemKindStruct        = { fg = c.purple },
    CmpItemKindEvent         = { fg = c.orange },
    CmpItemKindEnum          = { fg = c.purple },
    CmpItemKindUnit          = { fg = c.orange },
    CmpItemKindModule        = { fg = c.fg_alt },
    CmpItemKindProperty      = { fg = c.fg },
    CmpItemKindField         = { fg = c.fg },
    CmpItemKindTypeParameter = { fg = c.purple },
    CmpItemKindEnumMember    = { fg = c.orange },
    CmpItemKindOperator      = { fg = c.cyan },
    CmpItemKindSnippet       = { fg = c.green },
    CmpItemKindColor         = { fg = c.orange },
    CmpItemKindFile          = { fg = c.blue },
    CmpItemKindFolder        = { fg = c.blue },
    CmpItemKindText          = { fg = c.fg_comment },

    -- ── indent-blankline ───────────────────────────────────────────────
    IndentBlanklineChar         = { fg = c.border },
    IndentBlanklineContextChar  = { fg = c.blue },
    IndentBlanklineContextStart = { sp = c.blue, style = "underline" },
    IblIndent                   = { fg = c.border },
    IblScope                    = { fg = c.blue },

    -- ── Trouble ────────────────────────────────────────────────────────
    TroubleNormal          = { fg = c.fg,         bg = c.bg_alt },
    TroubleText            = { fg = c.fg },
    TroubleCount           = { fg = c.purple,     bg = c.bg_alt },
    TroubleCode            = { fg = c.fg_comment },
    TroubleFile            = { fg = c.blue },
    TroubleLocation        = { fg = c.fg_gutter },
    TroubleIndent          = { fg = c.border },
    TroubleSignError       = { fg = c.red },
    TroubleSignWarning     = { fg = c.orange },
    TroubleSignInformation = { fg = c.blue },
    TroubleSignHint        = { fg = c.green },
    TroubleError           = { fg = c.red },
    TroubleWarning         = { fg = c.orange },
    TroubleInformation     = { fg = c.blue },
    TroubleHint            = { fg = c.green },

    -- ── nvim-notify ────────────────────────────────────────────────────
    NotifyERRORBorder  = { fg = c.red },
    NotifyWARNBorder   = { fg = c.orange },
    NotifyINFOBorder   = { fg = c.blue },
    NotifyDEBUGBorder  = { fg = c.fg_comment },
    NotifyTRACEBorder  = { fg = c.purple },
    NotifyERRORIcon    = { fg = c.red },
    NotifyWARNIcon     = { fg = c.orange },
    NotifyINFOIcon     = { fg = c.blue },
    NotifyDEBUGIcon    = { fg = c.fg_comment },
    NotifyTRACEIcon    = { fg = c.purple },
    NotifyERRORTitle   = { fg = c.red,    style = "bold" },
    NotifyWARNTitle    = { fg = c.orange, style = "bold" },
    NotifyINFOTitle    = { fg = c.blue,   style = "bold" },
    NotifyDEBUGTitle   = { fg = c.fg_comment },
    NotifyTRACETitle   = { fg = c.purple },
    NotifyERRORBody    = { fg = c.fg, bg = c.bg },
    NotifyWARNBody     = { fg = c.fg, bg = c.bg },
    NotifyINFOBody     = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody    = { fg = c.fg, bg = c.bg },
    NotifyTRACEBody    = { fg = c.fg, bg = c.bg },

    -- ── Leap / Lightspeed ──────────────────────────────────────────────
    LeapMatch                = { fg = c.bg,  bg = c.orange, style = "bold" },
    LeapLabelPrimary         = { fg = c.bg,  bg = c.red,    style = "bold" },
    LeapLabelSecondary       = { fg = c.bg,  bg = c.purple, style = "bold" },
    LeapBackdrop             = { fg = c.fg_gutter },
    LightspeedLabel          = { fg = c.bg,  bg = c.red,    style = "bold" },
    LightspeedLabelOverlapped= { fg = c.bg,  bg = c.orange, style = "bold" },
    LightspeedLabelDistant   = { fg = c.bg,  bg = c.purple, style = "bold" },
    LightspeedShortcut       = { fg = c.bg,  bg = c.cyan,   style = "bold" },
    LightspeedGreywash       = { fg = c.fg_gutter },

    -- ── Dashboard / Alpha ──────────────────────────────────────────────
    DashboardHeader  = { fg = c.purple },
    DashboardCenter  = { fg = c.blue },
    DashboardShortcut= { fg = c.cyan },
    DashboardFooter  = { fg = c.fg_comment, style = c.italic },
    AlphaHeader      = { fg = c.purple },
    AlphaButtons     = { fg = c.blue },
    AlphaShortcut    = { fg = c.cyan },
    AlphaFooter      = { fg = c.fg_comment, style = c.italic },

    -- ── Which-key ──────────────────────────────────────────────────────
    WhichKey          = { fg = c.blue },
    WhichKeyGroup     = { fg = c.purple },
    WhichKeyDesc      = { fg = c.fg },
    WhichKeySeparator = { fg = c.fg_gutter },
    WhichKeyFloat     = { bg = c.bg_alt },
    WhichKeyBorder    = { fg = c.border },
    WhichKeyValue     = { fg = c.fg_comment },

    -- ── Rainbow delimiters ─────────────────────────────────────────────
    RainbowDelimiterRed    = { fg = c.red },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = "#B8860B" },
    RainbowDelimiterGreen  = { fg = c.green },
    RainbowDelimiterBlue   = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.purple },
    RainbowDelimiterCyan   = { fg = c.cyan },

    -- ── Mini.nvim ──────────────────────────────────────────────────────
    MiniCompletionActiveParameter = { style = "underline" },
    MiniCursorword                = { bg = c.bg_highlight },
    MiniCursorwordCurrent         = { bg = c.bg_highlight },
    MiniIndentscopeSymbol         = { fg = c.blue },
    MiniJump                      = { fg = c.bg,  bg = c.orange },
    MiniJump2dSpot                = { fg = c.bg,  bg = c.red,  style = "bold" },
    MiniStatuslineDevinfo         = { fg = c.fg_alt,    bg = c.bg_alt },
    MiniStatuslineFileinfo        = { fg = c.fg_alt,    bg = c.bg_alt },
    MiniStatuslineFilename        = { fg = c.fg,        bg = c.bg_alt },
    MiniStatuslineInactive        = { fg = c.fg_gutter, bg = c.bg_alt },
    MiniStatuslineModeCommand     = { fg = c.bg,        bg = c.orange, style = "bold" },
    MiniStatuslineModeInsert      = { fg = c.bg,        bg = c.green,  style = "bold" },
    MiniStatuslineModeNormal      = { fg = c.bg,        bg = c.blue,   style = "bold" },
    MiniStatuslineModeOther       = { fg = c.bg,        bg = c.cyan,   style = "bold" },
    MiniStatuslineModeReplace     = { fg = c.bg,        bg = c.red,    style = "bold" },
    MiniStatuslineModeVisual      = { fg = c.bg,        bg = c.purple, style = "bold" },
    MiniSurround                  = { fg = c.bg,        bg = c.orange },
    MiniTablineCurrent            = { fg = c.fg,        bg = c.bg,     style = "bold" },
    MiniTablineHidden             = { fg = c.fg_gutter, bg = c.bg_alt },
    MiniTablineModifiedCurrent    = { fg = c.orange,    bg = c.bg,     style = "bold" },
    MiniTablineModifiedHidden     = { fg = c.orange,    bg = c.bg_alt },
    MiniTablineModifiedVisible    = { fg = c.orange,    bg = c.bg_alt },
    MiniTablineTabpagesection     = { fg = c.bg,        bg = c.fg_gutter },
    MiniTablineVisible            = { fg = c.fg,        bg = c.bg_alt },
    MiniTestEmphasis              = { style = "bold" },
    MiniTestFail                  = { fg = c.red,   style = "bold" },
    MiniTestPass                  = { fg = c.green, style = "bold" },
    MiniTrailspace                = { bg = c.red },

    -- ── nvim-dap ───────────────────────────────────────────────────────
    DapBreakpoint          = { fg = c.red },
    DapBreakpointCondition = { fg = c.orange },
    DapBreakpointRejected  = { fg = c.fg_gutter },
    DapLogPoint            = { fg = c.blue },
    DapStopped             = { fg = c.green, bg = "#E6F4EC" },
    DapStoppedLine         = { bg = "#E6F4EC" },
    DapUIScope             = { fg = c.blue },
    DapUIType              = { fg = c.purple },
    DapUIValue             = { fg = c.orange },
    DapUIModifiedValue     = { fg = c.orange, style = "bold" },
    DapUIDecoration        = { fg = c.fg_gutter },
    DapUIThread            = { fg = c.green },
    DapUIStoppedThread     = { fg = c.green, style = "bold" },
    DapUISource            = { fg = c.fg_alt },
    DapUILineNumber        = { fg = c.blue },
    DapUIFloatBorder       = { fg = c.border },
    DapUIWatchesEmpty      = { fg = c.red },
    DapUIWatchesValue      = { fg = c.green },
    DapUIWatchesError      = { fg = c.red },
    DapUIBreakpointsPath              = { fg = c.blue },
    DapUIBreakpointsInfo              = { fg = c.green },
    DapUIBreakpointsCurrentLine       = { fg = c.green, style = "bold" },
    DapUIBreakpointsDisabledLine      = { fg = c.fg_gutter },
  })
end

return theme

local palette = {
  dark = "#202020",
  foreground = "#ebdbb2",
  background = "#282828",
  background_dark = "#242424",
  bg_light = "#32302f",
  comment = "#665c54",
  gray = "#DEDEDE",
  soft_yellow = "#EEBD35",
  soft_green = "#98971a",
  bright_yellow = "#fabd2f",
  orange = "#d65d0e",
  red = "#fb4934",
  error_red = "#cc241d",
  magenta = "#b16286",
  pink = "#D4879C",
  light_blue = "#7fa2ac",
  dark_gray = "#83a598",
  medium_gray = "#504945",
  blue_gray = "#458588",
  forest_green = "#689d6a",
  clean_green = "#8ec07c",
  milk = "#E7D7AD",
  none = "NONE",
}

local M = {}

function M.setup(config)
  local theme = {}
  theme.base = {
    NormalFloat = { fg = palette.foreground, bg = palette.background_dark },
    Normal = { fg = palette.foreground, bg = palette.background },
    Comment = { fg = palette.comment, style = "italic" },
    Constant = { fg = palette.soft_yellow },
    String = { fg = palette.soft_green },
    Character = { fg = palette.soft_yellow },
    Number = { fg = palette.bright_yellow },
    Boolean = { fg = palette.orange },
    Float = { fg = palette.bright_yellow },
    Identifier = { fg = palette.soft_yellow },
    Function = { fg = palette.soft_yellow },
    Statement = { fg = palette.red },
    Conditional = { fg = palette.foreground },
    Repeat = { fg = palette.magenta },
    Label = { fg = palette.dark_gray },
    Operator = { fg = palette.foreground },
    Keyword = { fg = palette.red, style = "italic" },
    Exception = { fg = palette.magenta },
    PreProc = { fg = palette.soft_yellow },
    Include = { fg = palette.red },
    Define = { fg = palette.magenta },
    Title = { fg = palette.foreground },
    Macro = { fg = palette.magenta },
    PreCondit = { fg = palette.magenta },
    Type = { fg = palette.soft_yellow },
    StorageClass = { fg = palette.blue_gray },
    Structure = { fg = palette.soft_yellow },
    Typedef = { fg = palette.soft_yellow },
    Special = { fg = palette.dark_gray, style = "italic" },
    SpecialComment = { fg = palette.comment },
    MoreMsg = { fg = palette.foreground },
    Error = { fg = palette.red, style = "bold" },
    Todo = { fg = palette.magenta, style = "bold" },
    CursorLineNr = { fg = palette.comment, style = "bold" },
    debugPc = { bg = palette.error_red },
    Conceal = { fg = palette.comment },
    Directory = { fg = palette.dark_gray },
    DiffAdd = { fg = palette.background, bg = palette.soft_yellow },
    DiffChange = { fg = palette.soft_yellow, style = "underline" },
    DiffDelete = { fg = palette.background, bg = palette.error_red },
    DiffText = { fg = palette.background, bg = palette.soft_yellow },
    ErrorMsg = { fg = palette.red },
    VertSplit = { fg = palette.bg_light },
    Folded = { fg = palette.comment },
    IncSearch = { fg = palette.forest_green, bg = palette.comment },
    LineNr = { fg = palette.medium_gray },
    MatchParen = { bg = palette.blue_gray, style = "underline" },
    NonText = { fg = palette.comment },
    Pmenu = { fg = palette.foreground, bg = palette.bg_light },
    PmenuSel = { fg = palette.background, bg = palette.blue_gray },
    Question = { fg = palette.magenta },
    QuickFixLine = { fg = palette.background, bg = palette.soft_yellow },
    Search = { fg = palette.background, bg = palette.foreground },
    SpecialKey = { fg = palette.comment },
    SpellBad = { fg = palette.red, style = "underline" },
    SpellCap = { fg = palette.bright_yellow },
    SpellLocal = { fg = palette.bright_yellow },
    SpellRare = { fg = palette.bright_yellow },
    StatusLine = { fg = palette.foreground, bg = palette.medium_gray },
    StatusLineNC = { fg = palette.comment },
    StatusLineTerm = { fg = palette.foreground, bg = palette.medium_gray },
    StatusLineTermNC = { fg = palette.medium_gray },
    TabLine = { fg = palette.comment },
    TabLineSel = { fg = palette.foreground },
    Terminal = { fg = palette.foreground, bg = palette.background },
    VisualNOS = { fg = palette.medium_gray },
    WarningMsg = { fg = palette.soft_yellow },
    WildMenu = { fg = palette.background, bg = palette.blue_gray },
    EndOfBuffer = { fg = palette.background },

    TSError = { fg = palette.red },
    TSPunctDelimiter = { fg = palette.foreground },
    TSPunctBracket = { fg = palette.foreground },
    TSPunctSpecial = { fg = palette.foreground },
    TSConstant = { fg = palette.pink, style = "bold" },
    TSConstBuiltin = { fg = palette.pink },
    TSString = { fg = palette.soft_green, style = "nocombine" },
    TSCharacter = { fg = palette.soft_green },
    TSNumber = { fg = palette.magenta },
    TSFuncBuiltin = { fg = palette.soft_yellow },
    TSFunction = { fg = palette.soft_yellow, style = "bold" },
    TSFuncMacro = { fg = palette.soft_yellow },
    TSParameter = { fg = palette.blue_gray, style = "nocombine" },
    TSParameterReference = { fg = palette.dark_gray },
    TSMethod = { fg = palette.soft_yellow, style = "bold" },
    TSField = { fg = palette.light_blue },
    TSProperty = { fg = palette.blue_gray },
    TSConstructor = { fg = palette.clean_green },
    TSConditional = { fg = palette.red },
    TSRepeat = { fg = palette.red },
    TSLabel = { fg = palette.blue_gray },
    TSKeyword = { fg = palette.red, style = "italic" },
    TSKeywordFunction = { fg = palette.red, style = "italic" },
    TSKeywordOperator = { fg = palette.red },
    TSOperator = { fg = palette.foreground },
    TSException = { fg = palette.magenta },
    TSType = { fg = palette.clean_green },
    TSTypeBuiltin = { fg = palette.blue_gray },
    TSStructure = { fg = palette.blue_gray },
    TSVariable = { fg = palette.light_blue },
    TSVariableBuiltin = { fg = palette.blue_gray },
    TSText = { fg = palette.soft_yellow },
    TSStrong = { fg = palette.soft_yellow },
    TSEmphasis = { fg = palette.soft_yellow },
    TSUnderline = { fg = palette.soft_yellow },
    TSTitle = { fg = palette.soft_yellow },
    TSLiteral = { fg = palette.soft_yellow },
    TSURI = { fg = palette.soft_yellow },
    TSTag = { fg = palette.clean_green },
    TSTagDelimiter = { fg = palette.comment },

    htmlArg = { fg = palette.soft_yellow },
    htmlBold = { fg = palette.bright_yellow, style = "bold" },
    htmlEndTag = { fg = palette.foreground },
    htmlH1 = { fg = palette.foreground },
    htmlH2 = { fg = palette.foreground },
    htmlH3 = { fg = palette.foreground },
    htmlH4 = { fg = palette.foreground },
    htmlH5 = { fg = palette.foreground },
    htmlH6 = { fg = palette.foreground },
    htmlItalic = { fg = palette.magenta, style = "italic" },
    htmlLink = { fg = palette.foreground, style = "underline" },
    htmlSpecialChar = { fg = palette.soft_yellow },
    htmlSpecialTagName = { fg = palette.blue_gray },
    htmlTag = { fg = palette.dark_gray },
    htmlTagN = { fg = palette.orange },
    htmlTagName = { fg = palette.orange },
    htmlTitle = { fg = palette.foreground },

    markdownBlockquote = { fg = palette.comment },
    markdownBold = { fg = palette.bright_yellow, style = "bold" },
    markdownCode = { fg = palette.soft_yellow },
    markdownCodeBlock = { fg = palette.comment },
    markdownCodeDelimiter = { fg = palette.comment },
    markdownH1 = { fg = palette.foreground },
    markdownH2 = { fg = palette.foreground },
    markdownH3 = { fg = palette.foreground },
    markdownH4 = { fg = palette.foreground },
    markdownH5 = { fg = palette.foreground },
    markdownH6 = { fg = palette.foreground },
    markdownHeadingDelimiter = { fg = palette.orange },
    markdownHeadingRule = { fg = palette.comment },
    markdownId = { fg = palette.magenta },
    markdownIdDeclaration = { fg = palette.blue_gray },
    markdownIdDelimiter = { fg = palette.magenta },
    markdownItalic = { fg = palette.magenta, style = "italic" },
    markdownLinkDelimiter = { fg = palette.magenta },
    markdownLinkText = { fg = palette.blue_gray },
    markdownListMarker = { fg = palette.orange },
    markdownOrderedListMarker = { fg = palette.orange },
    markdownRule = { fg = palette.comment },
    markdownUrl = { fg = palette.soft_green, style = "underline" },

    phpInclude = { fg = palette.magenta },
    phpClass = { fg = palette.soft_yellow },
    phpClasses = { fg = palette.soft_yellow },
    phpFunction = { fg = palette.blue_gray },
    phpType = { fg = palette.magenta },
    phpKeyword = { fg = palette.magenta },
    phpVarSelector = { fg = palette.foreground },
    phpIdentifier = { fg = palette.foreground },
    phpMethod = { fg = palette.blue_gray },
    phpBoolean = { fg = palette.blue_gray },
    phpParent = { fg = palette.foreground },
    phpOperator = { fg = palette.magenta },
    phpRegion = { fg = palette.magenta },
    phpUseNamespaceSeparator = { fg = palette.foreground },
    phpClassNamespaceSeparator = { fg = palette.foreground },
    phpDocTags = { fg = palette.magenta },
    phpDocParam = { fg = palette.magenta },

    CocExplorerIndentLine = { fg = palette.comment },
    CocExplorerBufferRoot = { fg = palette.orange },
    CocExplorerFileRoot = { fg = palette.orange },
    CocExplorerBufferFullPath = { fg = palette.comment },
    CocExplorerFileFullPath = { fg = palette.comment },
    CocExplorerBufferReadonly = { fg = palette.magenta },
    CocExplorerBufferModified = { fg = palette.magenta },
    CocExplorerBufferNameVisible = { fg = palette.orange },
    CocExplorerFileReadonly = { fg = palette.magenta },
    CocExplorerFileModified = { fg = palette.magenta },
    CocExplorerFileHidden = { fg = palette.comment },
    CocExplorerHelpLine = { fg = palette.magenta },

    EasyMotionTarget = { fg = palette.red, style = "bold" },
    EasyMotionTarget2First = { fg = palette.red, style = "bold" },
    EasyMotionTarget2Second = { fg = palette.red, style = "bold" },

    StartifyNumber = { fg = palette.foreground },
    StartifySelect = { fg = palette.blue_gray },
    StartifyBracket = { fg = palette.blue_gray },
    StartifySpecial = { fg = palette.orange },
    StartifyVar = { fg = palette.blue_gray },
    StartifyPath = { fg = palette.soft_yellow },
    StartifyFile = { fg = palette.foreground },
    StartifySlash = { fg = palette.foreground },
    StartifyHeader = { fg = palette.medium_gray },
    StartifySection = { fg = palette.soft_yellow },
    StartifyFooter = { fg = palette.soft_yellow },

    WhichKey = { fg = palette.magenta },
    WhichKeySeperator = { fg = palette.soft_yellow },
    WhichKeyGroup = { fg = palette.orange },
    WhichKeyDesc = { fg = palette.forest_green },

    diffAdded = { fg = palette.soft_yellow },
    diffRemoved = { fg = palette.orange },
    diffFileId = { fg = palette.blue_gray, style = "bold" },
    diffFile = { fg = palette.comment },
    diffNewFile = { fg = palette.soft_yellow },
    diffOldFile = { fg = palette.orange },

    SignifySignAdd = { fg = palette.soft_yellow },
    SignifySignChange = { fg = palette.soft_yellow },
    SignifySignDelete = { fg = palette.orange },
    GitGutterAdd = { fg = palette.soft_green },
    GitGutterChange = { fg = palette.soft_yellow },
    GitGutterDelete = { fg = palette.error_red },
    debugBreakpoint = { fg = palette.error_red, style = "reverse" },

    VimwikiHeader1 = { fg = palette.orange, style = "bold" },
    VimwikiHeader2 = { fg = palette.soft_green, style = "bold" },
    VimwikiHeader3 = { fg = palette.dark_gray, style = "bold" },
    VimwikiHeader4 = { fg = palette.clean_green, style = "bold" },
    VimwikiHeader5 = { fg = palette.red, style = "bold" },
    VimwikiHeader6 = { fg = palette.pink, style = "bold" },
    VimwikiLink = { fg = palette.forest_green },
    VimwikiHeaderChar = { fg = palette.medium_gray },
    VimwikiHR = { fg = palette.soft_yellow },
    VimwikiList = { fg = palette.orange },
    VimwikiTag = { fg = palette.orange },
    VimwikiMarkers = { fg = palette.medium_gray },

    ColorColumn = { bg = palette.background_dark },
    SignColumn = { bg = palette.background },
    CursorColumn = { bg = palette.background },
    CursorLine = { bg = palette.bg_light },
    FoldColumn = { fg = palette.NONE },
    PmenuSbar = { bg = palette.comment },
    PmenuThumb = { bg = palette.foreground },
    EasyMotionShade = { fg = palette.NONE },
    TabLineFill = { bg = palette.background },
    Visual = { bg = palette.medium_gray },
    Cursor = { bg = palette.NONE, style = "reverse" },

    -- mix
    pythonTSVariable = { fg = palette.foreground, bg = palette.NONE, style = "NONE" },
    pythonDecorator = { fg = palette.orange, style = "bold" },
    rustTSVariable = { fg = palette.foreground, bg = palette.NONE, style = "NONE" },
    javascriptTSConditional = { fg = palette.red },
    javascriptTSVariable = { fg = palette.light_blue },
    GitSignsCurrentLineBlame = { fg = palette.medium_gray, bg = palette.bg_light },
    Underlined = { fg = palette.error_red, style = "underline" },
    cppTSVariable = { fg = palette.milk, bg = palette.bg_light },

    -- Nvim Tree
    NvimTreeNormal = { fg = palette.foreground, bg = palette.background_dark },
    NvimTreeNormalNC = { fg = palette.foreground, bg = palette.background_dark },
    NvimTreeFolderIcon = { fg = palette.soft_yellow },
    NvimTreeRootFolder = { fg = palette.magenta, style = "bold" },

    NvimTreeGitDirty = { fg = palette.red },
    NvimTreeGitStaged = { fg = palette.foreground },
    NvimTreeGitMerge = { fg = palette.soft_yellow },
    NvimTreeGitRenamed = { fg = palette.soft_yellow },
    NvimTreeGitNew = { fg = palette.soft_green },
    NvimTreeGitDeleted = { fg = palette.red },

    -- Hop
    HopNextKey = { fg = palette.soft_yellow, bg = palette.dark, style = "bold" },
    HopNextKey1 = { fg = palette.soft_yellow, bg = palette.dark, style = "bold" },
    HopNextKey2 = { fg = palette.milk, bg = palette.dark },

    -- indent blankline
    IndentBlanklineChar = { guifg = "#313131" },
    IndentBlanklineSpaceChar = { guifg = "#313131" },
    IndentBlanklineContextChar = { fg = "#365050" },

    FloatBorder = { bg = palette.background_dark },
    -- Cmp
    CmpDocumentation = { fg = palette.foreground, bg = palette.bg_float },
    CmpDocumentationBorder = { fg = palette.medium_gray, bg = palette.bg_float },

    CmpItemAbbr = { fg = palette.foreground, bg = palette.none },
    CmpItemAbbrDeprecated = { fg = palette.milk, bg = palette.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = palette.light_blue, bg = palette.none },
    CmpItemAbbrMatchFuzzy = { fg = palette.light_blue, bg = palette.none },

    CmpItemKindDefault = { fg = palette.dark_gray, bg = palette.none },
    CmpItemMenu = { fg = palette.comment, bg = palette.none },

    CmpItemKindKeyword = { fg = palette.blue_gray, bg = palette.none },

    CmpItemKindVariable = { fg = palette.magenta, bg = palette.none },
    CmpItemKindConstant = { fg = palette.magenta, bg = palette.none },
    CmpItemKindReference = { fg = palette.magenta, bg = palette.none },
    CmpItemKindValue = { fg = palette.magenta, bg = palette.none },

    CmpItemKindFunction = { fg = palette.orange, bg = palette.none },
    CmpItemKindMethod = { fg = palette.orange, bg = palette.none },
    CmpItemKindConstructor = { fg = palette.orange, bg = palette.none },

    CmpItemKindClass = { fg = palette.pink, bg = palette.none },
    CmpItemKindInterface = { fg = palette.pink, bg = palette.none },
    CmpItemKindStruct = { fg = palette.pink, bg = palette.none },
    CmpItemKindEvent = { fg = palette.pink, bg = palette.none },
    CmpItemKindEnum = { fg = palette.pink, bg = palette.none },
    CmpItemKindUnit = { fg = palette.pink, bg = palette.none },

    CmpItemKindModule = { fg = palette.soft_yellow, bg = palette.none },

    CmpItemKindProperty = { fg = palette.forest_green, bg = palette.none },
    CmpItemKindField = { fg = palette.forest_green, bg = palette.none },
    CmpItemKindTypeParameter = { fg = palette.forest_green, bg = palette.none },
    CmpItemKindEnumMember = { fg = palette.forest_green, bg = palette.none },
    CmpItemKindOperator = { fg = palette.forest_green, bg = palette.none },
    CmpItemKindSnippet = { fg = palette.gray, bg = palette.none },
  }
  return theme
end

return M

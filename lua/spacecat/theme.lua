local theme = {}

theme.setup = function()
  local config = require('spacecat').config
  local util = require('spacecat.util')
  local c = require('spacecat.palette')

  theme = {
    -- -------------------------------------------------------------------------------------------------
    -- General settings
    -- -------------------------------------------------------------------------------------------------
    ColorColumn = { bg = c.bg }, -- Columns set with 'colorcolumn'
    Conceal = { fg = c.fg }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor = { fg = c.bg, bg = c.fg }, -- Character under the cursor
    lCursor = { fg = c.bg, bg = c.fg }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.bg, bg = c.fg }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = c.bg_light }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { fg = c.bg_light }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.blue }, -- Directory names (and other special names in listings)
    DiffAdd = { fg = c.green_light, bg = c.bg }, -- Diff mode: Added line |diff.txt|
    DiffChange = { fg = c.cyan, bg = c.bg }, -- Diff mode: Changed line |diff.txt|
    DiffDelete = { fg = c.red, bg = c.bg }, -- Diff mode: Deleted line |diff.txt|
    DiffText = { fg = c.yellow, bg = c.bg }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.bg }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg = { fg = c.error }, -- Error messages on the command line
    VertSplit = { fg = c.border }, -- Column separating vertically split windows
    Folded = { fg = c.blue, bg = c.bg_light }, -- Line used for closed folds
    FoldColumn = { bg = c.bg }, -- 'foldcolumn'
    SignColumn = { bg = c.bg }, -- Column where |signs| are displayed
    IncSearch = { bg = c.orange, fg = c.bg }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.orange }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { bg = c.bg_light, bold = config.bold }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = c.bg }, -- Normal text
    NormalFloat = { fg = c.fg, bg = c.bg }, -- Normal text in floating windows.
    NormalNC = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg, bg = c.bg_dark }, -- normal text in non-current windows
    Pmenu = { fg = c.fg, bg = c.bg }, -- Popup menu: Normal item.
    PmenuSel = { fg = c.bg, bg = c.fg }, -- Popup menu: Selected item.
    PmenuSbar = { bg = c.bg_dark }, -- Popup menu: Scrollbar.
    PmenuThumb = { bg = c.bg_light }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.bg_visual, bold = config.bold }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = c.blue, fg = c.bg }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey = { fg = c.bg_dark }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, undercurl = config.undercurl }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, undercurl = config.undercurl }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, undercurl = config.undercurl }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, undercurl = config.undercurl }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg, bg = c.bg_dark }, -- Status line of current window
    StatusLineNC = { fg = c.blue, bg = c.bg_dark }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.fg, bg = c.bg_light }, -- Tab pages line, not active tab page label
    TabLineFill = { bg = c.black }, -- Tab pages line, where there are no labels
    TabLineSel = { fg = c.black, bg = c.blue }, -- Tab pages line, active tab page label
    Title = { fg = c.blue, bold = config.bold }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.bg_light }, -- Visual mode selection
    VisualNOS = { bg = c.bg_light }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.warning }, -- Warning messages
    Whitespace = { fg = c.fg }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu = { bg = c.bg_light }, -- Current match in 'wildmenu' completion

    Comment = { fg = c.comment, bg = c.bg, italic = config.italic }, -- Any comment

    Constant = { fg = c.green }, -- (*) Any constant
    String = { fg = c.blue_dark }, --   A string constant: "this is a string"
    Character = { fg = c.cyan }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier = { fg = c.green }, -- (*) Any variable name
    Function = { fg = c.red }, --   Function name (also: methods for classes)

    Statement = { fg = c.orange }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    Operator = { fg = c.blue }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    PreProc = { fg = c.cyan }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type = { fg = c.red }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special = { fg = c.orange }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined = { underline = config.underline }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error = { fg = c.error }, -- Any erroneous construct
    Todo = { fg = c.yellow, bg = c.bg }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- -------------------------------------------------------------------------------------------------
    -- NeoVim
    -- -------------------------------------------------------------------------------------------------
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warning },

    -- -------------------------------------------------------------------------------------------------
    -- LSP client's
    -- -------------------------------------------------------------------------------------------------
    LspReferenceText = { bg = c.fg }, -- Used for highlighting "text" references
    LspReferenceRead = { bg = c.fg }, -- Used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg }, -- Used for highlighting "write" references
    LspCodeLens = { fg = c.comment }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter = { fg = c.orange }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- -------------------------------------------------------------------------------------------------
    -- Diagnostics
    -- -------------------------------------------------------------------------------------------------
    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)

    DiagnosticVirtualTextError = { fg = c.error }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn = { fg = c.warning }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo = { fg = c.info }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint = { fg = c.hint }, -- Used for "Hint" diagnostic virtual text.

    DiagnosticUnderlineError = { sp = c.error, undercurl = config.undercurl }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn = { sp = c.warning, undercurl = config.undercurl }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = config.undercurl }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = config.undercurl }, -- Used to underline "Hint" diagnostics.

    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- -------------------------------------------------------------------------------------------------
    -- Tree-Sitter syntax groups
    -- -------------------------------------------------------------------------------------------------
    TSAttribute = { fg = c.comment }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    -- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          { } , -- Character literals: `'a'` in C.
    -- TSCharacterSpecial   { } , -- Special characters.
    -- TSComment            { } , -- Line comments and block comments.
    -- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    -- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
    TSConstructor = { fg = c.orange }, -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    -- TSDebug              { } , -- Debugging statements.
    -- TSDefine             { } , -- Preprocessor #define statements.
    -- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField = { fg = c.green }, -- Object and struct fields.
    -- TSFloat              { } , -- Floating-point number literals.
    -- TSFunction           { } , -- Function calls and definitions.
    -- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
    TSFuncMacro = { fg = c.red }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = c.orange }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            { } , -- Keywords that don't fit into other categories.
    TSKeywordFunction = { fg = c.orange }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    -- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordReturn = { fg = c.orange }, -- Keywords like `return` and `yield`.
    TSLabel = { fg = c.blue }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             { } , -- Method calls and definitions.
    TSNamespace = { fg = c.fg }, -- Identifiers referring to modules and namespaces.
    -- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             { } , -- Numeric literals that don't fit into other categories.
    TSOperator = { fg = c.blue }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter = { fg = c.green }, -- Parameters of a function.
    -- TSParameterReference { } , -- References to parameters of a function.
    -- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
    TSProperty = { fg = c.reen }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = c.fg }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket = { fg = c.yellow }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial = { fg = c.yellow }, -- Special punctuation that doesn't fit into the previous categories.
    TSRepeat = { fg = c.orange }, -- Keywords related to loops: `for`, `while`, etc.
    -- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
    -- TSString             { } , -- String literals.
    -- TSStringRegex        { } , -- Regular expression literals.
    TSStringEscape = { fg = c.magenta }, -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
    TSTag = { fg = c.red }, -- Tags like HTML tag names.
    TSTagAttribute = { fg = c.teal }, -- HTML tag attributes.
    TSTagDelimiter = { fg = c.red }, -- Tag delimiters like `<` `>` `/`.
    TSText = { fg = c.white }, -- Non-structured text. Like text in a markup language.
    -- TSStrong             { } , -- Text to be represented in bold.
    -- TSEmphasis           { } , -- Text to be represented with emphasis.
    -- TSUnderline          { } , -- Text to be represented with an underline.
    -- TSStrike             { } , -- Strikethrough text.
    -- TSTitle              { } , -- Text that is part of a title.
    -- TSLiteral            { } , -- Literal or verbatim text.
    -- TSURI                { } , -- URIs like hyperlinks or email addresses.
    -- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
    TSTextReference = { fg = c.fg }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        { } , -- Text environments of markup languages.
    -- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote = { fg = c.bg, bg = c.info }, -- Text representation of an informational note.
    TSWarning = { fg = c.bg, bg = c.warning }, -- Text representation of a warning note.
    TSDanger = { fg = c.bg, bg = c.error }, -- Text representation of a danger note.
    TSType = { fg = c.fg }, -- Type (and class) definitions and annotations.
    TSTypeBuiltin = { fg = c.fg }, -- Built-in types: `i32` in Rust.
    TSVariable = { fg = c.green }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin = { fg = c.red }, -- Variable names defined by the language: `this` or `self` in Javascript.

    -- -------------------------------------------------------------------------------------------------
    -- Telescope
    -- -------------------------------------------------------------------------------------------------
    TelescopeNormal = { fg = c.fg, bg = c.bg_dark },
    TelescopeSelection = { fg = c.orange, bold = config.bold },
    TelescopeBorder = { fg = c.orange, bg = c.bg_dark },
    TelescopePromptCounter = { fg = c.green, bg = c.bg },
    TelescopeSelectionCaret = { fg = c.red },
    TelescopePromptBorder = { fg = c.orange },
    TelescopeResultsBorder = { fg = c.orange },
    TelescopePreviewBorder = { fg = c.orange },
    TelescopePromptPrefix = { fg = c.red },

    -- -------------------------------------------------------------------------------------------------
    -- GitSigns
    -- -------------------------------------------------------------------------------------------------
    GitSignsAdd = { fg = c.gitSigns.add },
    GitSignsChange = { fg = c.gitSigns.change },
    GitSignsDelete = { fg = c.gitSigns.delete },

    -- -------------------------------------------------------------------------------------------------
    -- NvimTree
    -- -------------------------------------------------------------------------------------------------
    NvimTreeSymlink = { fg = c.magenta },
    NvimTreeRootFolder = { fg = c.blue, bold = config.bold },
    NvimTreeExecFile = { fg = c.red },
    NvimTreeSpecialFile = { fg = c.purple, underline = config.underline },
    NvimTreeImageFile = { fg = c.purple },
    NvimTreeIndentMarker = { fg = c.white },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeNormal = { fg = c.white, bg = c.bg_dark },

    -- -------------------------------------------------------------------------------------------------
    -- Dashboard
    -- -------------------------------------------------------------------------------------------------
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader = { fg = c.orange },
    DashboardCenter = { fg = c.green },
    DashboardFooter = { fg = c.yellow, italic = config.italic },
    DiagnosticWarning = { link = 'DiagnosticWarn' },
    DiagnosticInformation = { link = 'DiagnosticInfo' },

    -- -------------------------------------------------------------------------------------------------
    -- Lspsaga
    -- -------------------------------------------------------------------------------------------------
    LspFloatWinNormal = { bg = c.bg_dark },
    LspFloatWinBorder = { fg = c.orange },
    LspSagaBorderTitle = { fg = c.green },
    LspSagaHoverBorder = { fg = c.orange },
    LspSagaRenameBorder = { fg = c.orange },
    LspSagaDefPreviewBorder = { fg = c.orange },
    LspSagaCodeActionBorder = { fg = c.orange },
    LspSagaLspFinderBorder = { fg = c.orange },
    LspSagaDiagnosticBorder = { fg = c.orange },
    LspSagaSignatureHelpBorder = { fg = c.orange },
    DefinitionBorder = { fg = c.orange },
    FinderSpinnerBorder = { fg = c.orange },
    LSOutlinePreviewBorder = { fg = c.orange },
    LspSagaFinderSelection = { fg = c.green },
    LspSagaCodeActionTitle = { fg = c.blue },
    LspSagaCodeActionContent = { fg = c.purple },
    ReferencesCount = { fg = c.purple },
    DefinitionCount = { fg = c.purple },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.cyan },

    -- -------------------------------------------------------------------------------------------------
    -- nvim-cmp
    -- -------------------------------------------------------------------------------------------------
    CmpDocumentation = { fg = c.fg, bg = c.bg_dark },
    CmpDocumentationBorder = { fg = c.orange, bg = c.bg_dark },
    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.bg_light, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.green, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.green, bg = c.none },
    CmpItemMenu = { fg = c.green, bg = c.none },
    CmpItemKindDefault = { fg = c.bg_light, bg = c.none },
    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },
    CmpItemKindVariable = { fg = c.magenta, bg = c.none },
    CmpItemKindConstant = { fg = c.magenta, bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },
    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },
    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },
    CmpItemKindModule = { fg = c.yellow, bg = c.none },
    CmpItemKindProperty = { fg = c.green, bg = c.none },
    CmpItemKindField = { fg = c.green, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green, bg = c.none },
    CmpItemKindOperator = { fg = c.green, bg = c.none },
    CmpItemKindSnippet = { fg = c.grey, bg = c.none },
  }

  -- Overrides from setup ( if exists )
  for group, hl in pairs(config.overrides) do
    if theme[group] and not vim.tbl_isempty(hl) then
      theme[group].link = nil
    end
    theme[group] = vim.tbl_extend('force', theme[group] or {}, hl)
  end

  return theme
end

return theme

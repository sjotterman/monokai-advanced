--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    SpecialKey                             { fg="#f3005f", }, -- SpecialKey     xxx ctermfg=81 guifg=#f3005f
    EndOfBuffer                            { fg="#26292c", }, -- EndOfBuffer    xxx guifg=#26292c
    DiffviewEndOfBuffer                    { EndOfBuffer }, -- DiffviewEndOfBuffer xxx links to EndOfBuffer
    NvimTreeEndOfBuffer                    { EndOfBuffer }, -- NvimTreeEndOfBuffer xxx links to EndOfBuffer
    TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    GitSignsAddInline                      { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
    GitSignsDeleteInline                   { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
    GitSignsChangeInline                   { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
    NonText                                { fg="#4d5154", }, -- NonText        xxx ctermfg=12 guifg=#4d5154
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    FidgetTask                             { NonText }, -- FidgetTask     xxx links to NonText
    DiffviewNonText                        { NonText }, -- DiffviewNonText xxx links to NonText
    GitSignsCurrentLineBlame               { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
    Directory                              { fg="#78dce8", }, -- Directory      xxx ctermfg=159 guifg=#78dce8
    NvimTreeEmptyFolderName                { Directory }, -- NvimTreeEmptyFolderName xxx links to Directory
    NvimTreeOpenedFolderName               { Directory }, -- NvimTreeOpenedFolderName xxx links to Directory
    TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate xxx links to Directory
    TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    DiffviewFolderName                     { Directory }, -- DiffviewFolderName xxx links to Directory
    TroubleFile                            { Directory }, -- TroubleFile    xxx links to Directory
    ErrorMsg                               { fg="#f3005f", gui="bold", }, -- ErrorMsg       xxx ctermfg=15 ctermbg=1 gui=bold guifg=#f3005f
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    IncSearch                              { fg="#26292c", bg="#fa8419", }, -- IncSearch      xxx cterm=reverse guifg=#26292c guibg=#fa8419
    Search                                 { fg="#26292c", bg="#dfd561", }, -- Search         xxx ctermfg=0 ctermbg=11 guifg=#26292c guibg=#dfd561
    Substitute                             { Search }, -- Substitute     xxx links to Search
    TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch xxx links to Search
    TroublePreview                         { Search }, -- TroublePreview xxx links to Search
    MoreMsg                                { fg="#f6f6ec", gui="bold", }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=#f6f6ec
    ModeMsg                                { fg="#f6f6ec", gui="bold", }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#f6f6ec
    LineNr                                 { fg=hsl(60,06,45), bg=hsl(210,7,14), }, -- LineNr         xxx ctermfg=11 guifg=#4d5154 guibg=#26292c
    LineNrAbove                            { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                            { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    TroubleIndent                          { LineNr }, -- TroubleIndent  xxx links to LineNr
    TroubleLocation                        { LineNr }, -- TroubleLocation xxx links to LineNr
    NvimTreeLineNr                         { LineNr }, -- NvimTreeLineNr xxx links to LineNr
    CursorLineNr                           { fg="#fa8419", bg="#26292c", }, -- CursorLineNr   xxx cterm=underline ctermfg=11 guifg=#fa8419 guibg=#26292c
    TroubleFoldIcon                        { CursorLineNr }, -- TroubleFoldIcon xxx links to CursorLineNr
    NvimTreeCursorLineNr                   { CursorLineNr }, -- NvimTreeCursorLineNr xxx links to CursorLineNr
    Question                               { fg="#dfd561", }, -- Question       xxx ctermfg=121 guifg=#dfd561
    StatusLine                             { fg="#b1b1b1", bg="#2e323c", }, -- StatusLine     xxx cterm=bold,reverse guifg=#b1b1b1 guibg=#2e323c
    MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    DiffviewStatusLine                     { StatusLine }, -- DiffviewStatusLine xxx links to StatusLine
    NvimTreeStatusLine                     { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
    StatusLineNC                           { fg="#72696a", bg="#2e323c", }, -- StatusLineNC   xxx cterm=reverse guifg=#72696a guibg=#2e323c
    DiffviewStatusLineNC                   { StatusLineNC }, -- DiffviewStatusLineNC xxx links to StatusLineNC
    NvimTreeStatusLineNC                   { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
    VertSplit                              { fg="#504945", }, -- VertSplit      xxx guifg=#504945
    WinSeparator                           { VertSplit }, -- WinSeparator   xxx links to VertSplit
    Title                                  { fg="#dfd561", gui="bold", }, -- Title          xxx ctermfg=225 gui=bold guifg=#dfd561
    FidgetTitle                            { Title }, -- FidgetTitle    xxx links to Title
    NullLsInfoSources                      { Title }, -- NullLsInfoSources xxx links to Title
    typescriptAnimationEvent               { Title }, -- typescriptAnimationEvent xxx links to Title
    typescriptCSSEvent                     { Title }, -- typescriptCSSEvent xxx links to Title
    typescriptDatabaseEvent                { Title }, -- typescriptDatabaseEvent xxx links to Title
    typescriptDocumentEvent                { Title }, -- typescriptDocumentEvent xxx links to Title
    typescriptDOMMutationEvent             { Title }, -- typescriptDOMMutationEvent xxx links to Title
    typescriptDragEvent                    { Title }, -- typescriptDragEvent xxx links to Title
    typescriptElementEvent                 { Title }, -- typescriptElementEvent xxx links to Title
    typescriptFocusEvent                   { Title }, -- typescriptFocusEvent xxx links to Title
    typescriptFormEvent                    { Title }, -- typescriptFormEvent xxx links to Title
    typescriptFrameEvent                   { Title }, -- typescriptFrameEvent xxx links to Title
    typescriptInputDeviceEvent             { Title }, -- typescriptInputDeviceEvent xxx links to Title
    typescriptMediaEvent                   { Title }, -- typescriptMediaEvent xxx links to Title
    typescriptMenuEvent                    { Title }, -- typescriptMenuEvent xxx links to Title
    typescriptNetworkEvent                 { Title }, -- typescriptNetworkEvent xxx links to Title
    typescriptProgressEvent                { Title }, -- typescriptProgressEvent xxx links to Title
    typescriptResourceEvent                { Title }, -- typescriptResourceEvent xxx links to Title
    typescriptScriptEvent                  { Title }, -- typescriptScriptEvent xxx links to Title
    typescriptSensorEvent                  { Title }, -- typescriptSensorEvent xxx links to Title
    typescriptSessionHistoryEvent          { Title }, -- typescriptSessionHistoryEvent xxx links to Title
    typescriptStorageEvent                 { Title }, -- typescriptStorageEvent xxx links to Title
    typescriptSVGEvent                     { Title }, -- typescriptSVGEvent xxx links to Title
    typescriptTabEvent                     { Title }, -- typescriptTabEvent xxx links to Title
    typescriptTextEvent                    { Title }, -- typescriptTextEvent xxx links to Title
    typescriptTouchEvent                   { Title }, -- typescriptTouchEvent xxx links to Title
    typescriptUpdateEvent                  { Title }, -- typescriptUpdateEvent xxx links to Title
    typescriptValueChangeEvent             { Title }, -- typescriptValueChangeEvent xxx links to Title
    typescriptViewEvent                    { Title }, -- typescriptViewEvent xxx links to Title
    typescriptWebsocketEvent               { Title }, -- typescriptWebsocketEvent xxx links to Title
    typescriptWindowEvent                  { Title }, -- typescriptWindowEvent xxx links to Title
    typescriptUncategorizedEvent           { Title }, -- typescriptUncategorizedEvent xxx links to Title
    typescriptServiceWorkerEvent           { Title }, -- typescriptServiceWorkerEvent xxx links to Title
    Visual                                 { bg="#333842", }, -- Visual         xxx ctermbg=242 guibg=#333842
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
    WarningMsg                             { fg="#dfd561", gui="bold", }, -- WarningMsg     xxx ctermfg=224 gui=bold guifg=#dfd561
    WildMenu                               { fg="#f6f6ec", bg="#fa8419", }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guifg=#f6f6ec guibg=#fa8419
    Folded                                 { fg="#72696a", bg="#2e323c", }, -- Folded         xxx ctermfg=14 ctermbg=242 guifg=#72696a guibg=#2e323c
    FoldColumn                             { fg="#f6f6ec", bg="#000000", }, -- FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=#f6f6ec guibg=#000000
    CursorLineFold                         { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd                                { bg="#3d5213", }, -- DiffAdd        xxx ctermbg=4 guibg=#3d5213
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    GitSignsAddLn                          { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    GitSignsAddPreview                     { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
    DiffChange                             { bg="#27406b", }, -- DiffChange     xxx ctermbg=5 guibg=#27406b
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    GitSignsChangeLn                       { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    DiffDelete                             { bg="#4a0f23", }, -- DiffDelete     xxx ctermfg=12 ctermbg=6 guibg=#4a0f23
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    GitSignsDeletePreview                  { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
    GitSignsDeleteVirtLn                   { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    DiffText                               { bg="#23324d", }, -- DiffText       xxx cterm=bold ctermbg=9 guibg=#23324d
    -- SignColumn                             { fg="#f6f6ec", bg="#26292c", }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=#f6f6ec guibg=#26292c
    SignColumn                             { LineNr }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=#f6f6ec guibg=#26292c
    CursorLineSign                         { SignColumn }, -- CursorLineSign xxx links to SignColumn
    Conceal                                { fg="#72696a", }, -- Conceal        xxx ctermfg=7 ctermbg=242 guifg=#72696a
    SpellBad                               { sp="red", gui="undercurl", fg="#f3005f", }, -- SpellBad       xxx ctermbg=9 gui=undercurl guifg=#f3005f guisp=Red
    SpellCap                               { sp="blue", gui="undercurl", fg="#9c64fe", }, -- SpellCap       xxx ctermbg=12 gui=undercurl guifg=#9c64fe guisp=Blue
    SpellRare                              { sp="magenta", gui="undercurl", fg="#78dce8", }, -- SpellRare      xxx ctermbg=13 gui=undercurl guifg=#78dce8 guisp=Magenta
    SpellLocal                             { sp="cyan", gui="undercurl", fg="#f3005f", }, -- SpellLocal     xxx ctermbg=14 gui=undercurl guifg=#f3005f guisp=Cyan
    Pmenu                                  { fg="#f6f6ec", bg="#2e323c", }, -- Pmenu          xxx ctermfg=0 ctermbg=13 guifg=#f6f6ec guibg=#2e323c
    PmenuSel                               { fg="#333842", bg="#fa8419", }, -- PmenuSel       xxx ctermfg=242 ctermbg=0 guifg=#333842 guibg=#fa8419
    PmenuSbar                              { bg="#2e323c", }, -- PmenuSbar      xxx ctermbg=248 guibg=#2e323c
    PmenuThumb                             { fg="#9c64fe", bg="#97e023", }, -- PmenuThumb     xxx ctermbg=15 guifg=#9c64fe guibg=#97e023
    TabLine                                { }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242
    TabModified                            { TabLine }, -- TabModified    xxx links to TabLine
    TabLineSel                             { bg="#333842", }, -- TabLineSel     xxx cterm=bold guibg=#333842
    TabModifiedSelected                    { TabLineSel }, -- TabModifiedSelected xxx links to TabLineSel
    TroubleCount                           { TabLineSel }, -- TroubleCount   xxx links to TabLineSel
    TabLineFill                            { }, -- TabLineFill    xxx cterm=reverse
    CursorColumn                           { bg="#2e323c", }, -- CursorColumn   xxx ctermbg=242 guibg=#2e323c
    NvimTreeCursorColumn                   { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
    CursorLine                             { bg="#2e323c", }, -- CursorLine     xxx cterm=underline guibg=#2e323c
    DiffviewCursorLine                     { CursorLine }, -- DiffviewCursorLine xxx links to CursorLine
    NvimTreeCursorLine                     { CursorLine }, -- NvimTreeCursorLine xxx links to CursorLine
    ColorColumn                            { bg="#2e323c", }, -- ColorColumn    xxx ctermbg=1 guibg=#2e323c
    QuickFixLine                           { fg="#9c64fe", gui="bold", }, -- QuickFixLine   xxx gui=bold guifg=#9c64fe
    Whitespace                             { fg="#4d5154", }, -- Whitespace     xxx guifg=#4d5154
    NormalFloat                            { bg="#211f22", }, -- NormalFloat    xxx guibg=#211f22
    NullLsInfoBorder                       { NormalFloat }, -- NullLsInfoBorder xxx links to NormalFloat
    WhichKeyFloat                          { NormalFloat }, -- WhichKeyFloat  xxx links to NormalFloat
    WinBar                                 { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
    WinBarNC                               { WinBar }, -- WinBarNC       xxx links to WinBar
    Cursor                                 { gui="reverse", }, -- Cursor         xxx gui=reverse
    lCursor                                { gui="reverse", }, -- lCursor        xxx gui=reverse
    Normal                                 { fg=hsl(60,36,95), bg=hsl(210,7,12), }, -- Normal         xxx guifg=#f6f6ec guibg=#26292c
    NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
    CopilotAnnotation                      { Normal }, -- CopilotAnnotation xxx links to Normal
    DiffviewNormal                         { Normal }, -- DiffviewNormal xxx links to Normal
    DiffviewSignColumn                     { Normal }, -- DiffviewSignColumn xxx links to Normal
    TroubleNormal                          { Normal }, -- TroubleNormal  xxx links to Normal
    TroubleText                            { Normal }, -- TroubleText    xxx links to Normal
    NvimTreeNormal                         { Normal }, -- NvimTreeNormal xxx links to Normal
    NvimTreePopup                          { Normal }, -- NvimTreePopup  xxx links to Normal
    typescriptParens                       { Normal }, -- typescriptParens xxx links to Normal
    typescriptSymbols                      { Normal }, -- typescriptSymbols xxx links to Normal
    FloatShadow                            { bg="black", blend=80, }, -- FloatShadow    xxx guibg=Black blend=80
    FloatShadowThrough                     { bg="black", blend=100, }, -- FloatShadowThrough xxx guibg=Black blend=100
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
    RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
    Error                                  { fg="#f3005f", }, -- Error          xxx ctermfg=15 ctermbg=9 guifg=#f3005f
    NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
    tsxCommentInvalid                      { Error }, -- tsxCommentInvalid xxx links to Error
    typescriptReserved                     { Error }, -- typescriptReserved xxx links to Error
    luaParenError                          { Error }, -- luaParenError  xxx links to Error
    luaError                               { Error }, -- luaError       xxx links to Error
    Todo                                   { fg="#fa8419", }, -- Todo           xxx ctermfg=0 ctermbg=11 guifg=#fa8419
    typescriptCommentTodo                  { Todo }, -- typescriptCommentTodo xxx links to Todo
    pythonTodo                             { Todo }, -- pythonTodo     xxx links to Todo
    luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
    String                                 { fg="#dfd561", }, -- String         xxx guifg=#dfd561
    NvimString                             { String }, -- NvimString     xxx links to String
    TelescopePreviewSize                   { String }, -- TelescopePreviewSize xxx links to String
    TelescopePreviewExecute                { String }, -- TelescopePreviewExecute xxx links to String
    tsxString                              { String }, -- tsxString      xxx links to String
    typescriptTemplate                     { String }, -- typescriptTemplate xxx links to String
    typescriptEventString                  { String }, -- typescriptEventString xxx links to String
    typescriptDestructureString            { String }, -- typescriptDestructureString xxx links to String
    typescriptString                       { String }, -- typescriptString xxx links to String
    typescriptRegexpString                 { String }, -- typescriptRegexpString xxx links to String
    typescriptStringProperty               { String }, -- typescriptStringProperty xxx links to String
    typescriptStringLiteralType            { String }, -- typescriptStringLiteralType xxx links to String
    typescriptTemplateLiteralType          { String }, -- typescriptTemplateLiteralType xxx links to String
    typescriptStringMember                 { String }, -- typescriptStringMember xxx links to String
    pythonQuotes                           { String }, -- pythonQuotes   xxx links to String
    pythonString                           { String }, -- pythonString   xxx links to String
    pythonRawString                        { String }, -- pythonRawString xxx links to String
    luaString2                             { String }, -- luaString2     xxx links to String
    luaString                              { String }, -- luaString      xxx links to String
    Constant                               { fg="#78dce8", }, -- Constant       xxx ctermfg=13 guifg=#78dce8
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
    diffOnly                               { Constant }, -- diffOnly       xxx links to Constant
    diffIdentical                          { Constant }, -- diffIdentical  xxx links to Constant
    diffDiffer                             { Constant }, -- diffDiffer     xxx links to Constant
    diffBDiffer                            { Constant }, -- diffBDiffer    xxx links to Constant
    diffIsA                                { Constant }, -- diffIsA        xxx links to Constant
    diffNoEOL                              { Constant }, -- diffNoEOL      xxx links to Constant
    diffCommon                             { Constant }, -- diffCommon     xxx links to Constant
    luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
    Character                              { fg="#dfd561", }, -- Character      xxx guifg=#dfd561
    Number                                 { fg="#9c64fe", }, -- Number         xxx guifg=#9c64fe
    NvimNumber                             { Number }, -- NvimNumber     xxx links to Number
    TelescopeResultsNumber                 { Number }, -- TelescopeResultsNumber xxx links to Number
    typescriptNumber                       { Number }, -- typescriptNumber xxx links to Number
    fugitiveCount                          { Number }, -- fugitiveCount  xxx links to Number
    pythonNumber                           { Number }, -- pythonNumber   xxx links to Number
    luaNumber                              { Number }, -- luaNumber      xxx links to Number
    Boolean                                { fg="#9c64fe", }, -- Boolean        xxx guifg=#9c64fe
    typescriptNull                         { Boolean }, -- typescriptNull xxx links to Boolean
    typescriptBoolean                      { Boolean }, -- typescriptBoolean xxx links to Boolean
    Float                                  { fg="#9c64fe", }, -- Float          xxx guifg=#9c64fe
    Function                               { fg="#97e023", gui="italic", }, -- Function       xxx gui=italic guifg=#97e023
    WhichKey                               { Function }, -- WhichKey       xxx links to Function
    tsxTagName                             { Function }, -- tsxTagName     xxx links to Function
    typescriptMember                       { Function }, -- typescriptMember xxx links to Function
    typescriptFuncTypeArrow                { Function }, -- typescriptFuncTypeArrow xxx links to Function
    TelescopeResultsFunction               { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsField                  { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsClass                  { Function }, -- TelescopeResultsClass xxx links to Function
    DiffviewReference                      { Function }, -- DiffviewReference xxx links to Function
    typescriptBraces                       { Function }, -- typescriptBraces xxx links to Function
    typescriptDestructureLabel             { Function }, -- typescriptDestructureLabel xxx links to Function
    typescriptDocParam                     { Function }, -- typescriptDocParam xxx links to Function
    typescriptDocNumParam                  { Function }, -- typescriptDocNumParam xxx links to Function
    typescriptDocEventRef                  { Function }, -- typescriptDocEventRef xxx links to Function
    typescriptConstructorType              { Function }, -- typescriptConstructorType xxx links to Function
    typescriptTestGlobal                   { Function }, -- typescriptTestGlobal xxx links to Function
    typescriptInterfaceName                { Function }, -- typescriptInterfaceName xxx links to Function
    typescriptFuncName                     { Function }, -- typescriptFuncName xxx links to Function
    tsxNameSpace                           { Function }, -- tsxNameSpace   xxx links to Function
    fugitiveSymbolicRef                    { Function }, -- fugitiveSymbolicRef xxx links to Function
    fugitiveStop                           { Function }, -- fugitiveStop   xxx links to Function
    pythonFunction                         { Function }, -- pythonFunction xxx links to Function
    pythonDecoratorName                    { Function }, -- pythonDecoratorName xxx links to Function
    pythonBuiltin                          { Function }, -- pythonBuiltin  xxx links to Function
    luaMetaMethod                          { Function }, -- luaMetaMethod  xxx links to Function
    luaFunction                            { Function }, -- luaFunction    xxx links to Function
    Identifier                             { fg="#f6f6ec", }, -- Identifier     xxx cterm=bold ctermfg=14 guifg=#f6f6ec
    NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
    typescriptVariable                     { Identifier }, -- typescriptVariable xxx links to Identifier
    typescriptTypeReference                { Identifier }, -- typescriptTypeReference xxx links to Identifier
    typescriptOperator                     { Identifier }, -- typescriptOperator xxx links to Identifier
    TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeMultiIcon                     { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    WhichKeyDesc                           { Identifier }, -- WhichKeyDesc   xxx links to Identifier
    tsxCloseString                         { Identifier }, -- tsxCloseString xxx links to Identifier
    typescriptKeywordOp                    { Identifier }, -- typescriptKeywordOp xxx links to Identifier
    typescriptEnumKeyword                  { Identifier }, -- typescriptEnumKeyword xxx links to Identifier
    typescriptTypeParameter                { Identifier }, -- typescriptTypeParameter xxx links to Identifier
    typescriptConstructSignature           { Identifier }, -- typescriptConstructSignature xxx links to Identifier
    typescriptAliasDeclaration             { Identifier }, -- typescriptAliasDeclaration xxx links to Identifier
    fugitiveHash                           { Identifier }, -- fugitiveHash   xxx links to Identifier
    luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
    Conditional                            { fg="#f3005f", }, -- Conditional    xxx guifg=#f3005f
    typescriptConditional                  { Conditional }, -- typescriptConditional xxx links to Conditional
    typescriptConditionalElse              { Conditional }, -- typescriptConditionalElse xxx links to Conditional
    typescriptBranch                       { Conditional }, -- typescriptBranch xxx links to Conditional
    typescriptCase                         { Conditional }, -- typescriptCase xxx links to Conditional
    pythonConditional                      { Conditional }, -- pythonConditional xxx links to Conditional
    luaCondElse                            { Conditional }, -- luaCondElse    xxx links to Conditional
    luaCond                                { Conditional }, -- luaCond        xxx links to Conditional
    Statement                              { fg="#f3005f", }, -- Statement      xxx ctermfg=11 guifg=#f3005f
    diffLine                               { Statement }, -- diffLine       xxx links to Statement
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
    typescriptStatementKeyword             { Statement }, -- typescriptStatementKeyword xxx links to Statement
    pythonStatement                        { Statement }, -- pythonStatement xxx links to Statement
    pythonAsync                            { Statement }, -- pythonAsync    xxx links to Statement
    luaStatement                           { Statement }, -- luaStatement   xxx links to Statement
    Repeat                                 { fg="#f3005f", }, -- Repeat         xxx guifg=#f3005f
    typescriptForOperator                  { Repeat }, -- typescriptForOperator xxx links to Repeat
    typescriptRepeat                       { Repeat }, -- typescriptRepeat xxx links to Repeat
    pythonRepeat                           { Repeat }, -- pythonRepeat   xxx links to Repeat
    luaRepeat                              { Repeat }, -- luaRepeat      xxx links to Repeat
    luaFor                                 { Repeat }, -- luaFor         xxx links to Repeat
    Label                                  { fg="#f3005f", }, -- Label          xxx guifg=#f3005f
    NullLsInfoHeader                       { Label }, -- NullLsInfoHeader xxx links to Label
    typescriptLabel                        { Label }, -- typescriptLabel xxx links to Label
    typescriptTemplateSB                   { Label }, -- typescriptTemplateSB xxx links to Label
    typescriptTupleLable                   { Label }, -- typescriptTupleLable xxx links to Label
    fugitiveHeader                         { Label }, -- fugitiveHeader xxx links to Label
    luaLabel                               { Label }, -- luaLabel       xxx links to Label
    Operator                               { fg="#f3005f", }, -- Operator       xxx guifg=#f3005f
    NvimAssignment                         { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator                           { Operator }, -- NvimOperator   xxx links to Operator
    TelescopeResultsOperator               { Operator }, -- TelescopeResultsOperator xxx links to Operator
    typescriptUnion                        { Operator }, -- typescriptUnion xxx links to Operator
    typescriptFuncComma                    { Operator }, -- typescriptFuncComma xxx links to Operator
    typescriptMethodAccessor               { Operator }, -- typescriptMethodAccessor xxx links to Operator
    pythonOperator                         { Operator }, -- pythonOperator xxx links to Operator
    luaOperator                            { Operator }, -- luaOperator    xxx links to Operator
    Keyword                                { fg="#f3005f", gui="italic", }, -- Keyword        xxx gui=italic guifg=#f3005f
    typescriptPromiseMethod                { Keyword }, -- typescriptPromiseMethod xxx links to Keyword
    typescriptDOMEventProp                 { Keyword }, -- typescriptDOMEventProp xxx links to Keyword
    typescriptAsyncFuncKeyword             { Keyword }, -- typescriptAsyncFuncKeyword xxx links to Keyword
    typescriptArrayStaticMethod            { Keyword }, -- typescriptArrayStaticMethod xxx links to Keyword
    typescriptArrayMethod                  { Keyword }, -- typescriptArrayMethod xxx links to Keyword
    TelescopePreviewSticky                 { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    WhichKeyGroup                          { Keyword }, -- WhichKeyGroup  xxx links to Keyword
    typescriptDOMStyle                     { Keyword }, -- typescriptDOMStyle xxx links to Keyword
    typescriptObjectAsyncKeyword           { Keyword }, -- typescriptObjectAsyncKeyword xxx links to Keyword
    typescriptMessage                      { Keyword }, -- typescriptMessage xxx links to Keyword
    typescriptAsyncFor                     { Keyword }, -- typescriptAsyncFor xxx links to Keyword
    typescriptClassKeyword                 { Keyword }, -- typescriptClassKeyword xxx links to Keyword
    typescriptInterfaceKeyword             { Keyword }, -- typescriptInterfaceKeyword xxx links to Keyword
    typescriptFuncKeyword                  { Keyword }, -- typescriptFuncKeyword xxx links to Keyword
    typescriptConstraint                   { Keyword }, -- typescriptConstraint xxx links to Keyword
    typescriptTypeQuery                    { Keyword }, -- typescriptTypeQuery xxx links to Keyword
    typescriptReadonlyArrayKeyword         { Keyword }, -- typescriptReadonlyArrayKeyword xxx links to Keyword
    typescriptAssertType                   { Keyword }, -- typescriptAssertType xxx links to Keyword
    typescriptUserDefinedType              { Keyword }, -- typescriptUserDefinedType xxx links to Keyword
    typescriptAccessibilityModifier        { Keyword }, -- typescriptAccessibilityModifier xxx links to Keyword
    typescriptReadonlyModifier             { Keyword }, -- typescriptReadonlyModifier xxx links to Keyword
    typescriptAliasKeyword                 { Keyword }, -- typescriptAliasKeyword xxx links to Keyword
    typescriptNumberStaticProp             { Keyword }, -- typescriptNumberStaticProp xxx links to Keyword
    typescriptNumberStaticMethod           { Keyword }, -- typescriptNumberStaticMethod xxx links to Keyword
    typescriptNumberMethod                 { Keyword }, -- typescriptNumberMethod xxx links to Keyword
    typescriptStringStaticMethod           { Keyword }, -- typescriptStringStaticMethod xxx links to Keyword
    typescriptStringMethod                 { Keyword }, -- typescriptStringMethod xxx links to Keyword
    typescriptObjectStaticMethod           { Keyword }, -- typescriptObjectStaticMethod xxx links to Keyword
    typescriptObjectMethod                 { Keyword }, -- typescriptObjectMethod xxx links to Keyword
    typescriptSymbolStaticProp             { Keyword }, -- typescriptSymbolStaticProp xxx links to Keyword
    typescriptSymbolStaticMethod           { Keyword }, -- typescriptSymbolStaticMethod xxx links to Keyword
    typescriptFunctionMethod               { Keyword }, -- typescriptFunctionMethod xxx links to Keyword
    typescriptMathStaticProp               { Keyword }, -- typescriptMathStaticProp xxx links to Keyword
    typescriptMathStaticMethod             { Keyword }, -- typescriptMathStaticMethod xxx links to Keyword
    typescriptDateStaticMethod             { Keyword }, -- typescriptDateStaticMethod xxx links to Keyword
    typescriptDateMethod                   { Keyword }, -- typescriptDateMethod xxx links to Keyword
    typescriptJSONStaticMethod             { Keyword }, -- typescriptJSONStaticMethod xxx links to Keyword
    typescriptRegExpStaticProp             { Keyword }, -- typescriptRegExpStaticProp xxx links to Keyword
    typescriptRegExpProp                   { Keyword }, -- typescriptRegExpProp xxx links to Keyword
    typescriptRegExpMethod                 { Keyword }, -- typescriptRegExpMethod xxx links to Keyword
    typescriptES6MapProp                   { Keyword }, -- typescriptES6MapProp xxx links to Keyword
    typescriptES6MapMethod                 { Keyword }, -- typescriptES6MapMethod xxx links to Keyword
    typescriptES6SetProp                   { Keyword }, -- typescriptES6SetProp xxx links to Keyword
    typescriptES6SetMethod                 { Keyword }, -- typescriptES6SetMethod xxx links to Keyword
    typescriptProxyAPI                     { Keyword }, -- typescriptProxyAPI xxx links to Keyword
    typescriptPromiseStaticMethod          { Keyword }, -- typescriptPromiseStaticMethod xxx links to Keyword
    typescriptReflectMethod                { Keyword }, -- typescriptReflectMethod xxx links to Keyword
    typescriptIntlMethod                   { Keyword }, -- typescriptIntlMethod xxx links to Keyword
    typescriptBOMWindowEvent               { Keyword }, -- typescriptBOMWindowEvent xxx links to Keyword
    typescriptBOMNavigatorProp             { Keyword }, -- typescriptBOMNavigatorProp xxx links to Keyword
    typescriptBOMNavigatorMethod           { Keyword }, -- typescriptBOMNavigatorMethod xxx links to Keyword
    typescriptServiceWorkerMethod          { Keyword }, -- typescriptServiceWorkerMethod xxx links to Keyword
    typescriptBOMLocationProp              { Keyword }, -- typescriptBOMLocationProp xxx links to Keyword
    typescriptBOMLocationMethod            { Keyword }, -- typescriptBOMLocationMethod xxx links to Keyword
    typescriptBOMHistoryProp               { Keyword }, -- typescriptBOMHistoryProp xxx links to Keyword
    typescriptBOMHistoryMethod             { Keyword }, -- typescriptBOMHistoryMethod xxx links to Keyword
    typescriptConsoleMethod                { Keyword }, -- typescriptConsoleMethod xxx links to Keyword
    typescriptXHRProp                      { Keyword }, -- typescriptXHRProp xxx links to Keyword
    typescriptXHRMethod                    { Keyword }, -- typescriptXHRMethod xxx links to Keyword
    typescriptURLStaticMethod              { Keyword }, -- typescriptURLStaticMethod xxx links to Keyword
    typescriptFileMethod                   { Keyword }, -- typescriptFileMethod xxx links to Keyword
    typescriptFileReaderProp               { Keyword }, -- typescriptFileReaderProp xxx links to Keyword
    typescriptFileReaderMethod             { Keyword }, -- typescriptFileReaderMethod xxx links to Keyword
    typescriptFileListMethod               { Keyword }, -- typescriptFileListMethod xxx links to Keyword
    typescriptBlobMethod                   { Keyword }, -- typescriptBlobMethod xxx links to Keyword
    typescriptURLUtilsProp                 { Keyword }, -- typescriptURLUtilsProp xxx links to Keyword
    typescriptSubtleCryptoMethod           { Keyword }, -- typescriptSubtleCryptoMethod xxx links to Keyword
    typescriptCryptoProp                   { Keyword }, -- typescriptCryptoProp xxx links to Keyword
    typescriptCryptoMethod                 { Keyword }, -- typescriptCryptoMethod xxx links to Keyword
    typescriptHeadersMethod                { Keyword }, -- typescriptHeadersMethod xxx links to Keyword
    typescriptRequestProp                  { Keyword }, -- typescriptRequestProp xxx links to Keyword
    typescriptRequestMethod                { Keyword }, -- typescriptRequestMethod xxx links to Keyword
    typescriptResponseProp                 { Keyword }, -- typescriptResponseProp xxx links to Keyword
    typescriptResponseMethod               { Keyword }, -- typescriptResponseMethod xxx links to Keyword
    typescriptServiceWorkerProp            { Keyword }, -- typescriptServiceWorkerProp xxx links to Keyword
    typescriptCacheMethod                  { Keyword }, -- typescriptCacheMethod xxx links to Keyword
    typescriptEncodingProp                 { Keyword }, -- typescriptEncodingProp xxx links to Keyword
    typescriptEncodingMethod               { Keyword }, -- typescriptEncodingMethod xxx links to Keyword
    typescriptGeolocationMethod            { Keyword }, -- typescriptGeolocationMethod xxx links to Keyword
    typescriptBOMNetworkProp               { Keyword }, -- typescriptBOMNetworkProp xxx links to Keyword
    typescriptPaymentMethod                { Keyword }, -- typescriptPaymentMethod xxx links to Keyword
    typescriptPaymentProp                  { Keyword }, -- typescriptPaymentProp xxx links to Keyword
    typescriptPaymentEvent                 { Keyword }, -- typescriptPaymentEvent xxx links to Keyword
    typescriptPaymentResponseMethod        { Keyword }, -- typescriptPaymentResponseMethod xxx links to Keyword
    typescriptPaymentResponseProp          { Keyword }, -- typescriptPaymentResponseProp xxx links to Keyword
    typescriptPaymentAddressProp           { Keyword }, -- typescriptPaymentAddressProp xxx links to Keyword
    typescriptPaymentShippingOptionProp    { Keyword }, -- typescriptPaymentShippingOptionProp xxx links to Keyword
    typescriptDOMNodeProp                  { Keyword }, -- typescriptDOMNodeProp xxx links to Keyword
    typescriptDOMNodeMethod                { Keyword }, -- typescriptDOMNodeMethod xxx links to Keyword
    typescriptDOMNodeType                  { Keyword }, -- typescriptDOMNodeType xxx links to Keyword
    typescriptDOMElemAttrs                 { Keyword }, -- typescriptDOMElemAttrs xxx links to Keyword
    typescriptDOMElemFuncs                 { Keyword }, -- typescriptDOMElemFuncs xxx links to Keyword
    typescriptDOMDocProp                   { Keyword }, -- typescriptDOMDocProp xxx links to Keyword
    typescriptDOMDocMethod                 { Keyword }, -- typescriptDOMDocMethod xxx links to Keyword
    typescriptDOMEventTargetMethod         { Keyword }, -- typescriptDOMEventTargetMethod xxx links to Keyword
    typescriptDOMEventMethod               { Keyword }, -- typescriptDOMEventMethod xxx links to Keyword
    typescriptDOMStorage                   { Keyword }, -- typescriptDOMStorage xxx links to Keyword
    typescriptDOMStorageProp               { Keyword }, -- typescriptDOMStorageProp xxx links to Keyword
    typescriptDOMStorageMethod             { Keyword }, -- typescriptDOMStorageMethod xxx links to Keyword
    typescriptDOMFormProp                  { Keyword }, -- typescriptDOMFormProp xxx links to Keyword
    typescriptDOMFormMethod                { Keyword }, -- typescriptDOMFormMethod xxx links to Keyword
    typescriptConstructor                  { Keyword }, -- typescriptConstructor xxx links to Keyword
    typescriptClassExtends                 { Keyword }, -- typescriptClassExtends xxx links to Keyword
    typescriptInterfaceExtends             { Keyword }, -- typescriptInterfaceExtends xxx links to Keyword
    typescriptAsyncFunc                    { Keyword }, -- typescriptAsyncFunc xxx links to Keyword
    Exception                              { fg="#f3005f", }, -- Exception      xxx guifg=#f3005f
    typescriptEndColons                    { Exception }, -- typescriptEndColons xxx links to Exception
    pythonException                        { Exception }, -- pythonException xxx links to Exception
    Include                                { fg="#78dce8", gui="italic", }, -- Include        xxx gui=italic guifg=#78dce8
    typescriptRef                          { Include }, -- typescriptRef  xxx links to Include
    fugitiveStagedHeading                  { Include }, -- fugitiveStagedHeading xxx links to Include
    pythonInclude                          { Include }, -- pythonInclude  xxx links to Include
    PreProc                                { fg="#97e023", }, -- PreProc        xxx ctermfg=81 guifg=#97e023
    typescriptDestructureVariable          { PreProc }, -- typescriptDestructureVariable xxx links to PreProc
    typescriptCall                         { PreProc }, -- typescriptCall xxx links to PreProc
    typescriptArrowFuncArg                 { PreProc }, -- typescriptArrowFuncArg xxx links to PreProc
    diffSubname                            { PreProc }, -- diffSubname    xxx links to PreProc
    diffIndexLine                          { PreProc }, -- diffIndexLine  xxx links to PreProc
    diffChanged                            { fg=hsl(186,71, 69), bg=SignColumn.bg }, -- diffChanged    xxx links to PreProc
    DiffviewFolderSign                     { PreProc }, -- DiffviewFolderSign xxx links to PreProc
    typescriptOptionalMark                 { PreProc }, -- typescriptOptionalMark xxx links to PreProc
    typescriptParamImpl                    { PreProc }, -- typescriptParamImpl xxx links to PreProc
    typescriptFuncArg                      { PreProc }, -- typescriptFuncArg xxx links to PreProc
    fugitiveHeading                        { PreProc }, -- fugitiveHeading xxx links to PreProc
    Define                                 { fg="#f3005f", }, -- Define         xxx guifg=#f3005f
    pythonDecorator                        { Define }, -- pythonDecorator xxx links to Define
    pythonDoctestValue                     { Define }, -- pythonDoctestValue xxx links to Define
    Macro                                  { fg="#f3005f", }, -- Macro          xxx guifg=#f3005f
    sym"@macro"                            { Macro }, -- @macro         xxx links to Macro
    fugitiveUnstagedHeading                { Macro }, -- fugitiveUnstagedHeading xxx links to Macro
    PreCondit                              { fg="#f3005f", }, -- PreCondit      xxx guifg=#f3005f
    fugitiveUntrackedHeading               { PreCondit }, -- fugitiveUntrackedHeading xxx links to PreCondit
    StorageClass                           { fg="#78dce8", }, -- StorageClass   xxx guifg=#78dce8
    typescriptClassStatic                  { StorageClass }, -- typescriptClassStatic xxx links to StorageClass
    fugitiveUntrackedModifier              { StorageClass }, -- fugitiveUntrackedModifier xxx links to StorageClass
    Type                                   { fg="#78dce8", }, -- Type           xxx ctermfg=121 guifg=#78dce8
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
    tsxAttrib                              { Type }, -- tsxAttrib      xxx links to Type
    typescriptPredefinedType               { Type }, -- typescriptPredefinedType xxx links to Type
    diffFile                               { Type }, -- diffFile       xxx links to Type
    DiffviewFilePanelSelected              { Type }, -- DiffviewFilePanelSelected xxx links to Type
    NullLsInfoTitle                        { Type }, -- NullLsInfoTitle xxx links to Type
    typescriptPrototype                    { Type }, -- typescriptPrototype xxx links to Type
    typescriptDocNamedParamType            { Type }, -- typescriptDocNamedParamType xxx links to Type
    typescriptDocParamName                 { Type }, -- typescriptDocParamName xxx links to Type
    typescriptDocParamType                 { Type }, -- typescriptDocParamType xxx links to Type
    typescriptArrowFunc                    { Type }, -- typescriptArrowFunc xxx links to Type
    typescriptType                         { Type }, -- typescriptType xxx links to Type
    fugitiveInstruction                    { Type }, -- fugitiveInstruction xxx links to Type
    fugitiveModifier                       { Type }, -- fugitiveModifier xxx links to Type
    Structure                              { fg="#78dce8", }, -- Structure      xxx guifg=#78dce8
    sym"@structure"                        { Structure }, -- @structure     xxx links to Structure
    typescriptGlobalMethod                 { Structure }, -- typescriptGlobalMethod xxx links to Structure
    typescriptGlobal                       { Structure }, -- typescriptGlobal xxx links to Structure
    typescriptIdentifier                   { Structure }, -- typescriptIdentifier xxx links to Structure
    typescriptNodeGlobal                   { Structure }, -- typescriptNodeGlobal xxx links to Structure
    typescriptBOM                          { Structure }, -- typescriptBOM  xxx links to Structure
    typescriptBOMWindowProp                { Structure }, -- typescriptBOMWindowProp xxx links to Structure
    typescriptBOMWindowMethod              { Structure }, -- typescriptBOMWindowMethod xxx links to Structure
    typescriptBOMWindowCons                { Structure }, -- typescriptBOMWindowCons xxx links to Structure
    typescriptXHRGlobal                    { Structure }, -- typescriptXHRGlobal xxx links to Structure
    typescriptCryptoGlobal                 { Structure }, -- typescriptCryptoGlobal xxx links to Structure
    typescriptEncodingGlobal               { Structure }, -- typescriptEncodingGlobal xxx links to Structure
    typescriptDOMEventCons                 { Structure }, -- typescriptDOMEventCons xxx links to Structure
    fugitiveUnstagedModifier               { Structure }, -- fugitiveUnstagedModifier xxx links to Structure
    pythonExceptions                       { Structure }, -- pythonExceptions xxx links to Structure
    luaTable                               { Structure }, -- luaTable       xxx links to Structure
    Typedef                                { fg="#78dce8", }, -- Typedef        xxx guifg=#78dce8
    fugitiveStagedModifier                 { Typedef }, -- fugitiveStagedModifier xxx links to Typedef
    Tag                                    { fg="#fa8419", }, -- Tag            xxx guifg=#fa8419
    fugitiveHelpTag                        { Tag }, -- fugitiveHelpTag xxx links to Tag
    Special                                { fg="#f6f6ec", }, -- Special        xxx ctermfg=224 guifg=#f6f6ec
    typescriptModule                       { Special }, -- typescriptModule xxx links to Special
    typescriptImport                       { Special }, -- typescriptImport xxx links to Special
    typescriptFuncType                     { Special }, -- typescriptFuncType xxx links to Special
    typescriptExport                       { Special }, -- typescriptExport xxx links to Special
    typescriptCastKeyword                  { Special }, -- typescriptCastKeyword xxx links to Special
    typescriptAmbientDeclaration           { Special }, -- typescriptAmbientDeclaration xxx links to Special
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
    typescriptASCII                        { Special }, -- typescriptASCII xxx links to Special
    typescriptSpecial                      { Special }, -- typescriptSpecial xxx links to Special
    typescriptImportType                   { Special }, -- typescriptImportType xxx links to Special
    typescriptExportType                   { Special }, -- typescriptExportType xxx links to Special
    typescriptTry                          { Special }, -- typescriptTry  xxx links to Special
    typescriptExceptions                   { Special }, -- typescriptExceptions xxx links to Special
    typescriptAbstract                     { Special }, -- typescriptAbstract xxx links to Special
    typescriptDecorator                    { Special }, -- typescriptDecorator xxx links to Special
    typescriptMappedIn                     { Special }, -- typescriptMappedIn xxx links to Special
    pythonEscape                           { Special }, -- pythonEscape   xxx links to Special
    pythonDoctest                          { Special }, -- pythonDoctest  xxx links to Special
    SpecialChar                            { fg="#f3005f", }, -- SpecialChar    xxx guifg=#f3005f
    NvimRegister                           { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
    NvimStringSpecial                      { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
    TelescopeResultsVariable               { SpecialChar }, -- TelescopeResultsVariable xxx links to SpecialChar
    luaSpecial                             { SpecialChar }, -- luaSpecial     xxx links to SpecialChar
    Delimiter                              { fg="#f6f6ec", }, -- Delimiter      xxx guifg=#f6f6ec
    sym"@punctuation"                      { Delimiter }, -- @punctuation   xxx links to Delimiter
    NvimParenthesis                        { Delimiter }, -- NvimParenthesis xxx links to Delimiter
    NvimColon                              { Delimiter }, -- NvimColon      xxx links to Delimiter
    NvimComma                              { Delimiter }, -- NvimComma      xxx links to Delimiter
    NvimArrow                              { Delimiter }, -- NvimArrow      xxx links to Delimiter
    SpecialComment                         { fg="#72696a", gui="italic", }, -- SpecialComment xxx gui=italic guifg=#72696a
    TelescopeResultsSpecialComment         { SpecialComment }, -- TelescopeResultsSpecialComment xxx links to SpecialComment
    typescriptMagicComment                 { SpecialComment }, -- typescriptMagicComment xxx links to SpecialComment
    typescriptDocNotation                  { SpecialComment }, -- typescriptDocNotation xxx links to SpecialComment
    typescriptDocTags                      { SpecialComment }, -- typescriptDocTags xxx links to SpecialComment
    Debug                                  { fg="#fa8419", }, -- Debug          xxx guifg=#fa8419
    DiagnosticError                        { fg="red", }, -- DiagnosticError xxx ctermfg=1 guifg=Red
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    TroubleError                           { DiagnosticError }, -- TroubleError   xxx links to DiagnosticError
    NvimTreeLspDiagnosticsError            { DiagnosticError }, -- NvimTreeLspDiagnosticsError xxx links to DiagnosticError
    DiagnosticWarn                         { fg="orange", }, -- DiagnosticWarn xxx ctermfg=3 guifg=Orange
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    TroubleWarning                         { DiagnosticWarn }, -- TroubleWarning xxx links to DiagnosticWarn
    NvimTreeLspDiagnosticsWarning          { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning xxx links to DiagnosticWarn
    DiagnosticInfo                         { fg="lightblue", }, -- DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    TroubleInformation                     { DiagnosticInfo }, -- TroubleInformation xxx links to DiagnosticInfo
    NvimTreeLspDiagnosticsInformation      { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation xxx links to DiagnosticInfo
    DiagnosticHint                         { fg="lightgrey", }, -- DiagnosticHint xxx ctermfg=7 guifg=LightGrey
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    TroubleHint                            { DiagnosticHint }, -- TroubleHint    xxx links to DiagnosticHint
    NvimTreeLspDiagnosticsHint             { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint xxx links to DiagnosticHint
    DiagnosticUnderlineError               { sp="#f3005f", gui="undercurl", }, -- DiagnosticUnderlineError xxx cterm=underline gui=undercurl guisp=#f3005f
    DiagnosticUnderlineWarn                { sp="#dfd561", gui="undercurl", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=undercurl guisp=#dfd561
    DiagnosticUnderlineInfo                { sp="#f6f6ec", gui="undercurl", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=undercurl guisp=#f6f6ec
    DiagnosticUnderlineHint                { sp="#78dce8", gui="undercurl", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=undercurl guisp=#78dce8
    DiagnosticVirtualTextError             { fg="#f3005f", }, -- DiagnosticVirtualTextError xxx guifg=#f3005f
    DiagnosticVirtualTextWarn              { fg="#dfd561", }, -- DiagnosticVirtualTextWarn xxx guifg=#dfd561
    DiagnosticVirtualTextInfo              { fg="#f6f6ec", }, -- DiagnosticVirtualTextInfo xxx guifg=#f6f6ec
    DiagnosticVirtualTextHint              { fg="#78dce8", }, -- DiagnosticVirtualTextHint xxx guifg=#78dce8
    DiagnosticSignError                    { fg="#f3005f", bg=LineNr.bg }, -- DiagnosticSignError xxx guifg=#f3005f
    TroubleSignError                       { DiagnosticSignError }, -- TroubleSignError xxx links to DiagnosticSignError
    DiagnosticSignWarn                     { fg="#dfd561", }, -- DiagnosticSignWarn xxx guifg=#dfd561
    DiffviewFilePanelConflicts             { DiagnosticSignWarn }, -- DiffviewFilePanelConflicts xxx links to DiagnosticSignWarn
    TroubleSignWarning                     { DiagnosticSignWarn }, -- TroubleSignWarning xxx links to DiagnosticSignWarn
    DiagnosticSignInfo                     { fg="#f6f6ec", }, -- DiagnosticSignInfo xxx guifg=#f6f6ec
    TroubleSignInformation                 { DiagnosticSignInfo }, -- TroubleSignInformation xxx links to DiagnosticSignInfo
    DiagnosticSignHint                     { fg="#78dce8", }, -- DiagnosticSignHint xxx guifg=#78dce8
    TroubleSignHint                        { DiagnosticSignHint }, -- TroubleSignHint xxx links to DiagnosticSignHint
    sym"@text"                             { fg="#97e023", }, -- @text          xxx guifg=#97e023
    sym"@text.literal"                     { fg="#dfd561", }, -- @text.literal  xxx guifg=#dfd561
    Comment                                { fg=hsl(253, 1, 43)}, -- Comment        xxx ctermfg=14 gui=italic guifg=#72696a
    WhichKeySeparator                      { Comment }, -- WhichKeySeparator xxx links to Comment
    NvimTreeGitIgnored                     { Comment }, -- NvimTreeGitIgnored xxx links to Comment
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
    LspInfoTip                             { Comment }, -- LspInfoTip     xxx links to Comment
    DiffviewDiffDelete                     { Comment }, -- DiffviewDiffDelete xxx links to Comment
    DiffviewStatusIgnored                  { Comment }, -- DiffviewStatusIgnored xxx links to Comment
    DiffviewFilePanelPath                  { Comment }, -- DiffviewFilePanelPath xxx links to Comment
    TroubleCode                            { Comment }, -- TroubleCode    xxx links to Comment
    TroubleSource                          { Comment }, -- TroubleSource  xxx links to Comment
    WhichKeyValue                          { Comment }, -- WhichKeyValue  xxx links to Comment
    tsxBlockComment                        { Comment }, -- tsxBlockComment xxx links to Comment
    tsxLineComment                         { Comment }, -- tsxLineComment xxx links to Comment
    shellbang                              { Comment }, -- shellbang      xxx links to Comment
    typescriptLineComment                  { Comment }, -- typescriptLineComment xxx links to Comment
    typescriptComment                      { Comment }, -- typescriptComment xxx links to Comment
    typescriptDocComment                   { Comment }, -- typescriptDocComment xxx links to Comment
    diffComment                            { Comment }, -- diffComment    xxx links to Comment
    pythonComment                          { Comment }, -- pythonComment  xxx links to Comment
    luaComment                             { Comment }, -- luaComment     xxx links to Comment
    sym"@text.reference"                   { fg="#fa8419", gui="italic", }, -- @text.reference xxx gui=italic guifg=#fa8419
    sym"@text.title"                       { fg="#dfd561", gui="bold", }, -- @text.title    xxx gui=bold guifg=#dfd561
    sym"@text.uri"                         { fg="#78dce8", gui="underline", }, -- @text.uri      xxx gui=underline guifg=#78dce8
    Underlined                             { gui="underline", }, -- Underlined     xxx cterm=underline ctermfg=81 gui=underline
    sym"@text.underline"                   { gui="underline", }, -- @text.underline xxx gui=underline
    sym"@text.todo"                        { fg="#78dce8", }, -- @text.todo     xxx guifg=#78dce8
    sym"@comment"                          { Comment }, -- @comment       xxx gui=italic guifg=#72696a
    sym"@constant"                         { fg="#78dce8", }, -- @constant      xxx guifg=#78dce8
    sym"@constant.builtin"                 { fg="#9c64fe", }, -- @constant.builtin xxx guifg=#9c64fe
    sym"@constant.macro"                   { fg="#9c64fe", }, -- @constant.macro xxx guifg=#9c64fe
    sym"@define"                           { fg="#78dce8", }, -- @define        xxx guifg=#78dce8
    sym"@string"                           { fg="#dfd561", }, -- @string        xxx guifg=#dfd561
    sym"@string.escape"                    { fg="#9c64fe", }, -- @string.escape xxx guifg=#9c64fe
    sym"@string.special"                   { fg="#9c64fe", }, -- @string.special xxx guifg=#9c64fe
    sym"@character"                        { fg="#dfd561", }, -- @character     xxx guifg=#dfd561
    sym"@character.special"                { fg="#9c64fe", }, -- @character.special xxx guifg=#9c64fe
    sym"@number"                           { fg="#9c64fe", }, -- @number        xxx guifg=#9c64fe
    sym"@boolean"                          { fg="#9c64fe", }, -- @boolean       xxx guifg=#9c64fe
    sym"@float"                            { fg="#9c64fe", }, -- @float         xxx guifg=#9c64fe
    sym"@function"                         { fg="#97e023", gui="italic", }, -- @function      xxx gui=italic guifg=#97e023
    sym"@function.builtin"                 { fg="#78dce8", }, -- @function.builtin xxx guifg=#78dce8
    sym"@function.macro"                   { fg="#97e023", gui="italic", }, -- @function.macro xxx gui=italic guifg=#97e023
    sym"@parameter"                        { fg="#fa8419", }, -- @parameter     xxx guifg=#fa8419
    sym"@method"                           { fg="#97e023", }, -- @method        xxx guifg=#97e023
    sym"@field"                            { fg="#f6f6ec", }, -- @field         xxx guifg=#f6f6ec
    sym"@property"                         { fg="#f6f6ec", }, -- @property      xxx guifg=#f6f6ec
    sym"@constructor"                      { fg="#78dce8", }, -- @constructor   xxx guifg=#78dce8
    sym"@conditional"                      { fg="#f3005f", }, -- @conditional   xxx guifg=#f3005f
    sym"@repeat"                           { fg="#f3005f", }, -- @repeat        xxx guifg=#f3005f
    sym"@label"                            { fg="#f3005f", }, -- @label         xxx guifg=#f3005f
    sym"@operator"                         { fg="#f3005f", }, -- @operator      xxx guifg=#f3005f
    sym"@keyword"                          { fg="#f3005f", gui="italic", }, -- @keyword       xxx gui=italic guifg=#f3005f
    sym"@exception"                        { fg="#f3005f", }, -- @exception     xxx guifg=#f3005f
    sym"@variable"                         { fg="#f6f6ec", }, -- @variable      xxx guifg=#f6f6ec
    sym"@type"                             { fg="#78dce8", }, -- @type          xxx guifg=#78dce8
    sym"@type.definition"                  { fg="#78dce8", }, -- @type.definition xxx guifg=#78dce8
    sym"@storageclass"                     { fg="#78dce8", }, -- @storageclass  xxx guifg=#78dce8
    sym"@namespace"                        { fg="#9c64fe", }, -- @namespace     xxx guifg=#9c64fe
    sym"@include"                          { fg="#78dce8", gui="italic", }, -- @include       xxx gui=italic guifg=#78dce8
    sym"@preproc"                          { fg="#97e023", }, -- @preproc       xxx guifg=#97e023
    sym"@debug"                            { fg="#f3005f", }, -- @debug         xxx guifg=#f3005f
    sym"@tag"                              { fg="#f3005f", }, -- @tag           xxx guifg=#f3005f
    MatchParen                             { fg="#f3005f", }, -- MatchParen     xxx ctermbg=6 guifg=#f3005f
    Ignore                                 { }, -- Ignore         xxx ctermfg=0
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    CopilotSuggestion                      { fg="#808080", }, -- CopilotSuggestion xxx ctermfg=244 guifg=#808080
    sym"@error"                            { fg="#f3005f", }, -- @error         xxx guifg=#f3005f
    sym"@attribute"                        { fg="#97e023", }, -- @attribute     xxx guifg=#97e023
    sym"@annotation"                       { fg="#97e023", }, -- @annotation    xxx guifg=#97e023
    sym"@type.builtin"                     { fg="#78dce8", }, -- @type.builtin  xxx guifg=#78dce8
    CmpItemKindVariable                    { fg="#f3005f", }, -- CmpItemKindVariable xxx guifg=#f3005f
    CmpItemKindValue                       { fg="#f3005f", }, -- CmpItemKindValue xxx guifg=#f3005f
    CmpItemKindUnit                        { fg="#fa8419", }, -- CmpItemKindUnit xxx guifg=#fa8419
    CmpItemKindStruct                      { fg="#fa8419", }, -- CmpItemKindStruct xxx guifg=#fa8419
    CmpItemKindProperty                    { fg="#97e023", }, -- CmpItemKindProperty xxx guifg=#97e023
    CmpItemKindOperator                    { fg="#97e023", }, -- CmpItemKindOperator xxx guifg=#97e023
    CmpItemKindModule                      { fg="#dfd561", }, -- CmpItemKindModule xxx guifg=#dfd561
    CmpItemKindMethod                      { fg="#78dce8", }, -- CmpItemKindMethod xxx guifg=#78dce8
    CmpItemKindKeyword                     { fg="#f3005f", }, -- CmpItemKindKeyword xxx guifg=#f3005f
    CmpItemKindInterface                   { fg="#fa8419", }, -- CmpItemKindInterface xxx guifg=#fa8419
    CmpItemKindFunction                    { fg="#78dce8", }, -- CmpItemKindFunction xxx guifg=#78dce8
    NvimTreeFolderIcon                     { fg="#8094b4", }, -- NvimTreeFolderIcon xxx guifg=#8094b4
    NvimTreeClosedFolderIcon               { NvimTreeFolderIcon }, -- NvimTreeClosedFolderIcon xxx links to NvimTreeFolderIcon
    NvimTreeOpenedFolderIcon               { NvimTreeFolderIcon }, -- NvimTreeOpenedFolderIcon xxx links to NvimTreeFolderIcon
    CmpItemKindField                       { fg="#97e023", }, -- CmpItemKindField xxx guifg=#97e023
    CmpItemKindEvent                       { fg="#fa8419", }, -- CmpItemKindEvent xxx guifg=#fa8419
    CmpItemKindEnumMember                  { fg="#97e023", }, -- CmpItemKindEnumMember xxx guifg=#97e023
    CmpItemKindEnum                        { fg="#fa8419", }, -- CmpItemKindEnum xxx guifg=#fa8419
    CmpItemKindConstructor                 { fg="#78dce8", }, -- CmpItemKindConstructor xxx guifg=#78dce8
    CmpItemKindConstant                    { fg="#f3005f", }, -- CmpItemKindConstant xxx guifg=#f3005f
    CmpItemKindClass                       { fg="#fa8419", }, -- CmpItemKindClass xxx guifg=#fa8419
    CmpItemAbbrMatchFuzzy                  { fg="#78dce8", }, -- CmpItemAbbrMatchFuzzy xxx guifg=#78dce8
    CmpItemAbbrMatch                       { fg="#78dce8", }, -- CmpItemAbbrMatch xxx guifg=#78dce8
    sym"@string.regex"                     { fg="#9c64fe", }, -- @string.regex  xxx guifg=#9c64fe
    CmpItemKindTypeParameter               { fg="#97e023", }, -- CmpItemKindTypeParameter xxx guifg=#97e023
    NvimTreeWindowPicker                   { fg="#ededed", gui="bold", bg="#4493c8", }, -- NvimTreeWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
    NvimTreeSymlink                        { fg="#f3005f", gui="bold", }, -- NvimTreeSymlink xxx gui=bold guifg=#f3005f
    NvimTreeSpecialFile                    { fg="#f6f6ec", }, -- NvimTreeSpecialFile xxx guifg=#f6f6ec
    NvimTreeRootFolder                     { fg="#f3005f", }, -- NvimTreeRootFolder xxx guifg=#f3005f
    NvimTreeOpenedFile                     { fg="#dfd561", gui="bold", }, -- NvimTreeOpenedFile xxx gui=bold guifg=#dfd561
    NvimTreeLiveFilterValue                { gui="bold", }, -- NvimTreeLiveFilterValue xxx gui=bold
    NvimTreeLiveFilterPrefix               { fg="#f3005f", gui="bold", }, -- NvimTreeLiveFilterPrefix xxx gui=bold guifg=#f3005f
    NvimTreeIndentMarker                   { fg="#8094b4", }, -- NvimTreeIndentMarker xxx guifg=#8094b4
    NvimTreeImageFile                      { fg="#f3005f", gui="bold", }, -- NvimTreeImageFile xxx gui=bold guifg=#f3005f
    NvimTreeGitStaged                      { fg="#dfd561", }, -- NvimTreeGitStaged xxx guifg=#dfd561
    NvimTreeFileStaged                     { NvimTreeGitStaged }, -- NvimTreeFileStaged xxx links to NvimTreeGitStaged
    NvimTreeGitRenamed                     { fg="#f3005f", }, -- NvimTreeGitRenamed xxx guifg=#f3005f
    NvimTreeFileRenamed                    { NvimTreeGitRenamed }, -- NvimTreeFileRenamed xxx links to NvimTreeGitRenamed
    NvimTreeGitNew                         { fg="#97e023", }, -- NvimTreeGitNew xxx guifg=#97e023
    NvimTreeFileNew                        { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
    NvimTreeGitMerge                       { fg="#9c64fe", }, -- NvimTreeGitMerge xxx guifg=#9c64fe
    NvimTreeFileMerge                      { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
    NvimTreeGitDirty                       { fg="#f3005f", }, -- NvimTreeGitDirty xxx guifg=#f3005f
    NvimTreeFileDirty                      { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
    NvimTreeGitDeleted                     { fg="#f3005f", }, -- NvimTreeGitDeleted xxx guifg=#f3005f
    NvimTreeFileDeleted                    { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
    NvimTreeFolderName                     { fg="#f6f6ec", }, -- NvimTreeFolderName xxx guifg=#f6f6ec
    NvimTreeExecFile                       { fg="#dfd561", gui="bold", }, -- NvimTreeExecFile xxx gui=bold guifg=#dfd561
    NvimTreeBookmark                       { fg="#dfd561", }, -- NvimTreeBookmark xxx guifg=#dfd561
    TelescopeNormal                        { fg="#e3e3e1", bg="#222426", }, -- TelescopeNormal xxx guifg=#e3e3e1 guibg=#222426
    TelescopePreviewNormal                 { TelescopeNormal }, -- TelescopePreviewNormal xxx links to TelescopeNormal
    TelescopeResultsNormal                 { TelescopeNormal }, -- TelescopeResultsNormal xxx links to TelescopeNormal
    TelescopePromptNormal                  { TelescopeNormal }, -- TelescopePromptNormal xxx links to TelescopeNormal
    TelescopeBorder                        { fg="#b1b1b1", }, -- TelescopeBorder xxx guifg=#b1b1b1
    TelescopePreviewBorder                 { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
    TelescopeResultsBorder                 { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
    TelescopePromptBorder                  { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
    diffRemoved                            { fg="#f3005f", }, -- diffRemoved    xxx guifg=#f3005f
    GitSignsDelete                         { diffRemoved }, -- GitSignsDelete xxx links to diffRemoved
    DiffviewStatusBroken                   { diffRemoved }, -- DiffviewStatusBroken xxx links to diffRemoved
    DiffviewStatusDeleted                  { diffRemoved }, -- DiffviewStatusDeleted xxx links to diffRemoved
    DiffviewStatusUnknown                  { diffRemoved }, -- DiffviewStatusUnknown xxx links to diffRemoved
    DiffviewFilePanelDeletions             { diffRemoved }, -- DiffviewFilePanelDeletions xxx links to diffRemoved
    diffAdded                              { fg="#97e023", }, -- diffAdded      xxx guifg=#97e023
    GitSignsAdd                            { fg=diffAdded.fg, bg=SignColumn.bg }, -- GitSignsAdd    xxx links to diffAdded
    DiffviewStatusAdded                    { diffAdded }, -- DiffviewStatusAdded xxx links to diffAdded
    DiffviewStatusUntracked                { diffAdded }, -- DiffviewStatusUntracked xxx links to diffAdded
    DiffviewFilePanelInsertions            { diffAdded }, -- DiffviewFilePanelInsertions xxx links to diffAdded
    sym"@variable.builtin"                 { fg="#fa8419", }, -- @variable.builtin xxx guifg=#fa8419
    sym"@type.qualifier"                   { fg="#f3005f", }, -- @type.qualifier xxx guifg=#f3005f
    sym"@todo"                             { fg="#78dce8", }, -- @todo          xxx guifg=#78dce8
    sym"@text.warning"                     { fg="#dfd561", gui="bold", }, -- @text.warning  xxx gui=bold guifg=#dfd561
    sym"@text.strong"                      { gui="bold", }, -- @text.strong   xxx gui=bold
    sym"@text.strike"                      { fg="#72696a", }, -- @text.strike   xxx guifg=#72696a
    sym"@text.note"                        { fg="#78dce8", gui="bold", }, -- @text.note     xxx gui=bold guifg=#78dce8
    sym"@text.math"                        { fg="#dfd561", }, -- @text.math     xxx guifg=#dfd561
    sym"@text.environment"                 { fg="#9c64fe", }, -- @text.environment xxx guifg=#9c64fe
    sym"@text.environment.name"            { fg="#78dce8", }, -- @text.environment.name xxx guifg=#78dce8
    sym"@text.emphasis"                    { gui="bold", }, -- @text.emphasis xxx gui=bold
    sym"@text.danger"                      { fg="#f3005f", gui="bold", }, -- @text.danger   xxx gui=bold guifg=#f3005f
    sym"@tag.delimiter"                    { fg="#f6f6ec", }, -- @tag.delimiter xxx guifg=#f6f6ec
    sym"@tag.attribute"                    { fg="#97e023", }, -- @tag.attribute xxx guifg=#97e023
    sym"@symbol"                           { fg="#9c64fe", }, -- @symbol        xxx guifg=#9c64fe
    sym"@punctuation.special"              { fg="#f3005f", }, -- @punctuation.special xxx guifg=#f3005f
    sym"@punctuation.delimiter"            { fg="#f6f6ec", }, -- @punctuation.delimiter xxx guifg=#f6f6ec
    sym"@punctuation.bracket"              { fg="#f6f6ec", }, -- @punctuation.bracket xxx guifg=#f6f6ec
    sym"@parameter.reference"              { fg="#f6f6ec", }, -- @parameter.reference xxx guifg=#f6f6ec
    sym"@method.call"                      { fg="#f6f6ec", }, -- @method.call   xxx guifg=#f6f6ec
    sym"@keyword.return"                   { fg="#f3005f", }, -- @keyword.return xxx guifg=#f3005f
    sym"@keyword.operator"                 { fg="#f3005f", }, -- @keyword.operator xxx guifg=#f3005f
    sym"@keyword.function"                 { fg="#78dce8", gui="italic", }, -- @keyword.function xxx gui=italic guifg=#78dce8
    sym"@function.call"                    { fg="#f6f6ec", }, -- @function.call xxx guifg=#f6f6ec
    IndentBlanklineContextChar             { fg="#f3005f", gui="nocombine", }, -- IndentBlanklineContextChar xxx cterm=nocombine gui=nocombine guifg=#f3005f
    IndentBlanklineSpaceCharBlankline      { fg="#4d5154", gui="nocombine", }, -- IndentBlanklineSpaceCharBlankline xxx cterm=nocombine gui=nocombine guifg=#4d5154
    IndentBlanklineSpaceChar               { fg="#4d5154", gui="nocombine", }, -- IndentBlanklineSpaceChar xxx cterm=nocombine gui=nocombine guifg=#4d5154
    IndentBlanklineChar                    { fg="#4d5154", gui="nocombine", }, -- IndentBlanklineChar xxx cterm=nocombine gui=nocombine guifg=#4d5154
    IndentBlanklineContextStart            { sp="#f3005f", gui="underline", }, -- IndentBlanklineContextStart xxx cterm=underline gui=underline guisp=#f3005f
    CmpItemAbbr                            { fg="#f6f6ec", }, -- CmpItemAbbr    xxx guifg=#f6f6ec
    CmpItemAbbrDefault                     { fg="#f6f6ec", }, -- CmpItemAbbrDefault xxx guifg=#f6f6ec
    CmpItemAbbrDeprecatedDefault           { fg="#72696a", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#72696a
    CmpItemAbbrMatchDefault                { fg="#f6f6ec", }, -- CmpItemAbbrMatchDefault xxx guifg=#f6f6ec
    CmpItemAbbrMatchFuzzyDefault           { fg="#f6f6ec", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#f6f6ec
    CmpItemKindDefault                     { fg="#f6f6ec", }, -- CmpItemKindDefault xxx guifg=#f6f6ec
    CmpItemKind                            { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
    CmpItemMenu                            { fg="#72696a", }, -- CmpItemMenu    xxx guifg=#72696a
    CmpItemMenuDefault                     { fg="#f6f6ec", }, -- CmpItemMenuDefault xxx guifg=#f6f6ec
    CmpItemKindReference                   { fg="#f3005f", }, -- CmpItemKindReference xxx guifg=#f3005f
    TelescopeMatching                      { fg="#78dce8", }, -- TelescopeMatching xxx guifg=#78dce8
    TelescopeMultiSelection                { fg="#f3005f", }, -- TelescopeMultiSelection xxx guifg=#f3005f
    TelescopeSelectionCaret                { fg="#97e023", }, -- TelescopeSelectionCaret xxx guifg=#97e023
    TelescopeSelection                     { fg="#f6f6ec", gui="bold", }, -- TelescopeSelection xxx gui=bold guifg=#f6f6ec
    DiffviewDiffAddAsDelete                { bg="#4a0f23", }, -- DiffviewDiffAddAsDelete xxx guibg=#4a0f23
    DiffviewFilePanelTitle                 { fg="#f3005f", gui="bold", }, -- DiffviewFilePanelTitle xxx cterm=bold gui=bold guifg=#f3005f
    DiffviewFilePanelRootPath              { DiffviewFilePanelTitle }, -- DiffviewFilePanelRootPath xxx links to DiffviewFilePanelTitle
    DiffviewSecondary                      { fg="#dfd561", }, -- DiffviewSecondary xxx cterm= gui= guifg=#dfd561
    DiffviewPrimary                        { fg="#97e023", }, -- DiffviewPrimary xxx cterm= gui= guifg=#97e023
    DiffviewDim1                           { fg="#72696a", }, -- DiffviewDim1   xxx cterm= gui= guifg=#72696a
    DiffviewFilePanelFileName              { fg="#f6f6ec", }, -- DiffviewFilePanelFileName xxx cterm= gui= guifg=#f6f6ec
    DiffviewFilePanelCounter               { fg="#f6f6ec", gui="bold", }, -- DiffviewFilePanelCounter xxx cterm=bold gui=bold guifg=#f6f6ec
    NvimTreeModifiedFile                   { fg="#dfd561", }, -- NvimTreeModifiedFile xxx guifg=#dfd561
    DevIconGitConfig                       { fg="#41535b", }, -- DevIconGitConfig xxx ctermfg=59 guifg=#41535b
    DevIconCpp                             { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=67 guifg=#519aba
    DevIconGitCommit                       { fg="#41535b", }, -- DevIconGitCommit xxx ctermfg=59 guifg=#41535b
    DevIconQuery                           { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=154 guifg=#90a850
    DevIconEnv                             { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=226 guifg=#faf743
    DevIconBashrc                          { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
    DevIconMakefile                        { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
    DevIconEjs                             { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconRss                             { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
    DevIconDefault                         { fg="#6d8086", }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
    DevIconSh                              { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=59 guifg=#4d5a5e
    DevIconBash                            { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
    DevIconAwk                             { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=59 guifg=#4d5a5e
    DevIconCPlusPlus                       { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
    DevIconTestJs                          { fg="#e37933", }, -- DevIconTestJs  xxx ctermfg=173 guifg=#e37933
    DevIconCsh                             { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconZig                             { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=208 guifg=#f69a1b
    DevIconEpp                             { fg="#ffa61a", }, -- DevIconEpp     xxx guifg=#ffa61a
    DevIconCss                             { fg="#42a5f5", }, -- DevIconCss     xxx ctermfg=39 guifg=#42a5f5
    DevIconExs                             { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
    DevIconJpg                             { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
    DevIconEdn                             { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=67 guifg=#519aba
    DevIconLuau                            { fg="#51a0cf", }, -- DevIconLuau    xxx ctermfg=74 guifg=#51a0cf
    DevIconRmd                             { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=67 guifg=#519aba
    DevIconGitIgnore                       { fg="#41535b", }, -- DevIconGitIgnore xxx ctermfg=59 guifg=#41535b
    DevIconDesktopEntry                    { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=60 guifg=#563d7c
    DevIconJsx                             { fg="#519aba", }, -- DevIconJsx     xxx ctermfg=67 guifg=#519aba
    DevIconLock                            { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
    DevIconCMakeLists                      { fg="#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
    DevIconPl                              { fg="#519aba", }, -- DevIconPl      xxx ctermfg=67 guifg=#519aba
    DevIconWebpack                         { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=67 guifg=#519aba
    DevIconLicense                         { fg="#cbcb41", }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
    DevIconWebp                            { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
    DevIconSuo                             { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854cc7
    DevIconNodeModules                     { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=161 guifg=#e8274b
    DevIconCrystal                         { fg="#000000", }, -- DevIconCrystal xxx ctermfg=16 guifg=#000000
    DevIconCobol                           { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
    DevIconSql                             { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
    DevIconCoffee                          { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
    DevIconRproj                           { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=65 guifg=#358a5b
    DevIconCp                              { fg="#519aba", }, -- DevIconCp      xxx ctermfg=67 guifg=#519aba
    DevIconClojureC                        { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=107 guifg=#8dc149
    DevIconClojure                         { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=107 guifg=#8dc149
    DevIconPackedResource                  { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
    DevIconPyo                             { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=67 guifg=#ffe291
    DevIconHaml                            { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=188 guifg=#eaeae1
    DevIconKsh                             { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconPyc                             { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=67 guifg=#ffe291
    DevIconPsd                             { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=67 guifg=#519aba
    DevIconPsb                             { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=67 guifg=#519aba
    DevIconDropbox                         { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
    DevIconDiff                            { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=59 guifg=#41535b
    DevIconGruntfile                       { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=173 guifg=#e37933
    DevIconPpt                             { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=167 guifg=#cb4a32
    DevIconGemfile                         { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
    DevIconOpenTypeFont                    { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=231 guifg=#ececec
    DevIconVagrantfile                     { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
    DevIconImportConfiguration             { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=231 guifg=#ececec
    DevIconOPUS                            { fg="#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#f88a02
    DevIconDoc                             { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=25 guifg=#185abd
    DevIconMaterial                        { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=132 guifg=#b83998
    DevIconIco                             { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
    DevIconFsharp                          { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=67 guifg=#519aba
    DevIconGodotProject                    { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
    DevIconBinaryGLTF                      { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=215 guifg=#ffb13b
    DevIconFsscript                        { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=67 guifg=#519aba
    DevIconTerraform                       { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=57 guifg=#5f43e9
    DevIconJson                            { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
    DevIconProcfile                        { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
    DevIconGulpfile                        { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
    DevIconC                               { fg="#599eff", }, -- DevIconC       xxx ctermfg=75 guifg=#599eff
    DevIconDrools                          { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
    DevIconFs                              { fg="#519aba", }, -- DevIconFs      xxx ctermfg=67 guifg=#519aba
    DevIconSwift                           { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=173 guifg=#e37933
    DevIconWasm                            { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=99 guifg=#5c4cdb
    DevIconXls                             { fg="#207245", }, -- DevIconXls     xxx ctermfg=23 guifg=#207245
    DevIconXcPlayground                    { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=173 guifg=#e37933
    DevIconCson                            { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
    DevIconPm                              { fg="#519aba", }, -- DevIconPm      xxx ctermfg=67 guifg=#519aba
    DevIconXml                             { fg="#e37933", }, -- DevIconXml     xxx ctermfg=173 guifg=#e37933
    DevIconElm                             { fg="#519aba", }, -- DevIconElm     xxx ctermfg=67 guifg=#519aba
    DevIconSvg                             { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=215 guifg=#ffb13b
    DevIconLua                             { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
    DevIconVHDL                            { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=29 guifg=#019833
    DevIconJson5                           { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
    DevIconIni                             { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
    DevIconVim                             { fg="#019833", }, -- DevIconVim     xxx ctermfg=29 guifg=#019833
    DevIconPrisma                          { fg="#ffffff", }, -- DevIconPrisma  xxx guifg=#ffffff
    DevIconConf                            { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
    DevIconJl                              { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
    DevIconKotlinScript                    { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
    DevIconYaml                            { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
    DevIconHs                              { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
    DevIconClojureDart                     { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=67 guifg=#519aba
    DevIconConfiguration                   { fg="#ececec", }, -- DevIconConfiguration xxx ctermfg=231 guifg=#ececec
    DevIconZsh                             { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
    DevIconYml                             { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
    DevIconXul                             { fg="#e37933", }, -- DevIconXul     xxx ctermfg=173 guifg=#e37933
    DevIconHbs                             { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=208 guifg=#f0772b
    DevIconEx                              { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
    DevIconScss                            { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
    DevIconGitLogo                         { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=202 guifg=#f14c28
    DevIconPp                              { fg="#ffa61a", }, -- DevIconPp      xxx guifg=#ffa61a
    DevIconAi                              { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
    DevIconBmp                             { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
    DevIconDockerfile                      { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=33 guifg=#458ee6
    DevIconScala                           { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
    DevIconNPMrc                           { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=161 guifg=#e8274b
    DevIconR                               { fg="#358a5b", }, -- DevIconR       xxx ctermfg=65 guifg=#358a5b
    DevIconWebmanifest                     { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=221 guifg=#f1e05a
    DevIconVala                            { fg="#7239b3", }, -- DevIconVala    xxx ctermfg=5 guifg=#7239b3
    DevIconVue                             { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=107 guifg=#8dc149
    DevIconMixLock                         { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
    DevIconFsx                             { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=67 guifg=#519aba
    DevIconGraphQL                         { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
    DevIconConfigRu                        { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
    DevIconLess                            { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=60 guifg=#563d7c
    DevIconTxt                             { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
    DevIconPhp                             { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
    DevIconTwig                            { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=107 guifg=#8dc149
    DevIconPackageJson                     { fg="#e8274b", }, -- DevIconPackageJson xxx guifg=#e8274b
    DevIconMdx                             { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=67 guifg=#519aba
    DevIconMustache                        { fg="#e37933", }, -- DevIconMustache xxx ctermfg=173 guifg=#e37933
    DevIconPackageLockJson                 { fg="#7a0d21", }, -- DevIconPackageLockJson xxx guifg=#7a0d21
    DevIconRakefile                        { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
    DevIconJava                            { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
    DevIconJpeg                            { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
    DevIconVerilog                         { fg="#019833", }, -- DevIconVerilog xxx ctermfg=29 guifg=#019833
    DevIconGDScript                        { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
    DevIconTextResource                    { fg="#cbcb41", }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
    DevIconTcl                             { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=67 guifg=#1e5cb3
    DevIconMotoko                          { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=99 guifg=#9772fb
    DevIconPy                              { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=61 guifg=#ffbc03
    DevIconHtml                            { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=202 guifg=#e44d26
    DevIconGemspec                         { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
    DevIconFsi                             { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=67 guifg=#519aba
    DevIconRs                              { fg="#dea584", }, -- DevIconRs      xxx ctermfg=180 guifg=#dea584
    DevIconSass                            { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
    DevIconTsx                             { fg="#519aba", }, -- DevIconTsx     xxx ctermfg=67 guifg=#519aba
    DevIconTextScene                       { fg="#a074c4", }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
    DevIconsbt                             { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
    DevIconTs                              { fg="#519aba", }, -- DevIconTs      xxx ctermfg=67 guifg=#519aba
    DevIconScheme                          { fg="#000000", }, -- DevIconScheme  xxx ctermfg=16 guifg=#000000
    DevIconHeex                            { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
    DevIconPsScriptfile                    { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=69 guifg=#4273ca
    DevIconFennel                          { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
    DevIconPsManifestfile                  { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=105 guifg=#6975c4
    DevIconToml                            { fg="#6d8086", }, -- DevIconToml    xxx ctermfg=66 guifg=#6d8086
    DevIconVimrc                           { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=29 guifg=#019833
    DevIconTex                             { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=58 guifg=#3d6117
    DevIconGvimrc                          { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=29 guifg=#019833
    DevIconTFVars                          { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=57 guifg=#5f43e9
    DevIconMd                              { fg="#ffffff", }, -- DevIconMd      xxx guifg=#ffffff
    DevIconSml                             { fg="#e37933", }, -- DevIconSml     xxx ctermfg=173 guifg=#e37933
    DevIconCxx                             { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=67 guifg=#519aba
    DevIconTor                             { fg="#519aba", }, -- DevIconTor     xxx ctermfg=67 guifg=#519aba
    DevIconSlim                            { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=166 guifg=#e34c26
    DevIconSettingsJson                    { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
    DevIconErb                             { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
    DevIconNPMIgnore                       { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=161 guifg=#e8274b
    DevIconHrl                             { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=132 guifg=#b83998
    DevIconBashProfile                     { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
    DevIconGitlabCI                        { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=166 guifg=#e24329
    DevIconH                               { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
    DevIconZshprofile                      { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
    DevIconHtm                             { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=166 guifg=#e34c26
    DevIconSvelte                          { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=202 guifg=#ff3e00
    DevIconLeex                            { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
    DevIconDsStore                         { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=59 guifg=#41535b
    DevIconZshrc                           { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
    DevIconNix                             { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
    DevIconZshenv                          { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
    DevIconStyl                            { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=107 guifg=#8dc149
    DevIconProlog                          { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
    DevIconPdf                             { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
    DevIconSln                             { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
    DevIconTerminal                        { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=71 guifg=#31b53e
    DevIconSig                             { fg="#e37933", }, -- DevIconSig     xxx ctermfg=173 guifg=#e37933
    DevIconPsScriptModulefile              { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=105 guifg=#6975c4
    DevIconRlib                            { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=180 guifg=#dea584
    DevIconBabelrc                         { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
    DevIconRb                              { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
    DevIconRake                            { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
    DevIconPyd                             { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=67 guifg=#ffe291
    DevIconFavicon                         { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
    DevIconPng                             { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
    DevIconBat                             { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=154 guifg=#c1f12e
    DevIconErl                             { fg="#b83998", }, -- DevIconErl     xxx ctermfg=132 guifg=#b83998
    DevIconGo                              { fg="#519aba", }, -- DevIconGo      xxx ctermfg=67 guifg=#519aba
    DevIconGif                             { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
    DevIconCs                              { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
    DevIconSolidity                        { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=67 guifg=#519aba
    DevIconDump                            { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
    DevIconEex                             { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
    DevIconMl                              { fg="#e37933", }, -- DevIconMl      xxx ctermfg=173 guifg=#e37933
    DevIconMli                             { fg="#e37933", }, -- DevIconMli     xxx ctermfg=173 guifg=#e37933
    DevIconClojureJS                       { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=67 guifg=#519aba
    DevIconMjs                             { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=221 guifg=#f1e05a
    DevIconBrewfile                        { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
    DevIconHh                              { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
    DevIconHxx                             { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
    DevIconKotlin                          { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
    DevIconMint                            { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
    DevIconNim                             { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
    DevIconLhs                             { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
    DevIconSystemVerilog                   { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=29 guifg=#019833
    DevIconMarkdown                        { fg="#519aba", }, -- DevIconMarkdown xxx ctermfg=67 guifg=#519aba
    DevIconJs                              { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
    DevIconDb                              { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
    DevIconCsv                             { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
    DevIconFish                            { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=59 guifg=#4d5a5e
    DevIconDart                            { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
    DevIconCMake                           { fg="#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
    DevIconD                               { fg="#427819", }, -- DevIconD       xxx ctermfg=64 guifg=#427819
    DevIconLog                             { fg="#ffffff", }, -- DevIconLog     xxx guifg=#ffffff
    DevIconGitAttributes                   { fg="#41535b", }, -- DevIconGitAttributes xxx ctermfg=59 guifg=#41535b
    DevIconGitModules                      { fg="#41535b", }, -- DevIconGitModules xxx ctermfg=59 guifg=#41535b
    DevIconHpp                             { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
    ReachHandleDelete                      { fg="#f3005f", bg="#26292c", }, -- ReachHandleDelete xxx guifg=#f3005f guibg=#26292c
    ReachHandleBuffer                      { fg="#dfd561", bg="#26292c", }, -- ReachHandleBuffer xxx guifg=#dfd561 guibg=#26292c
    ReachModifiedIndicator                 { fg="#dfd561", bg="#26292c", }, -- ReachModifiedIndicator xxx guifg=#dfd561 guibg=#26292c
    ReachDirectory                         { fg="#78dce8", bg="#26292c", }, -- ReachDirectory xxx guifg=#78dce8 guibg=#26292c
    ReachBorder                            { fg="#72696a", bg="#26292c", }, -- ReachBorder    xxx guifg=#72696a guibg=#26292c
    ReachCurrent                           { fg="#dfd561", bg="#26292c", }, -- ReachCurrent   xxx guifg=#dfd561 guibg=#26292c
    ReachPriority                          { fg="#f6f6ec", bg="#26292c", }, -- ReachPriority  xxx guifg=#f6f6ec guibg=#26292c
    ReachMatchExact                        { fg="#dfd561", bg="#26292c", }, -- ReachMatchExact xxx guifg=#dfd561 guibg=#26292c
    ReachGrayOut                           { fg="#72696a", bg="#26292c", }, -- ReachGrayOut   xxx guifg=#72696a guibg=#26292c
    ReachMarkLocation                      { fg="#72696a", bg="#26292c", }, -- ReachMarkLocation xxx guifg=#72696a guibg=#26292c
    ReachMark                              { fg="#f6f6ec", bg="#26292c", }, -- ReachMark      xxx guifg=#f6f6ec guibg=#26292c
    ReachHandleMarkGlobal                  { fg="#9c64fe", bg="#26292c", }, -- ReachHandleMarkGlobal xxx guifg=#9c64fe guibg=#26292c
    ReachHandleMarkLocal                   { fg="#78dce8", bg="#26292c", }, -- ReachHandleMarkLocal xxx guifg=#78dce8 guibg=#26292c
    ReachTail                              { fg="#f6f6ec", bg="#26292c", }, -- ReachTail      xxx guifg=#f6f6ec guibg=#26292c
    ReachHandleSplit                       { fg="#78dce8", bg="#26292c", }, -- ReachHandleSplit xxx guifg=#78dce8 guibg=#26292c
    GitSignsStagedAdd                      { fg="#4b7011", }, -- GitSignsStagedAdd xxx cterm= gui= guifg=#4b7011
    GitSignsStagedChange                   { fg="#4b7011", }, -- GitSignsStagedChange xxx cterm= gui= guifg=#4b7011
    GitSignsStagedDelete                   { fg="#79002f", }, -- GitSignsStagedDelete xxx cterm= gui= guifg=#79002f
    GitSignsStagedChangedelete             { fg="#4b7011", }, -- GitSignsStagedChangedelete xxx cterm= gui= guifg=#4b7011
    GitSignsStagedTopdelete                { fg="#79002f", }, -- GitSignsStagedTopdelete xxx cterm= gui= guifg=#79002f
    GitSignsStagedAddNr                    { fg="#4b7011", }, -- GitSignsStagedAddNr xxx cterm= gui= guifg=#4b7011
    GitSignsStagedChangeNr                 { fg="#4b7011", }, -- GitSignsStagedChangeNr xxx cterm= gui= guifg=#4b7011
    GitSignsStagedDeleteNr                 { fg="#79002f", }, -- GitSignsStagedDeleteNr xxx cterm= gui= guifg=#79002f
    GitSignsStagedChangedeleteNr           { fg="#4b7011", }, -- GitSignsStagedChangedeleteNr xxx cterm= gui= guifg=#4b7011
    GitSignsStagedTopdeleteNr              { fg="#79002f", }, -- GitSignsStagedTopdeleteNr xxx cterm= gui= guifg=#79002f
    GitSignsStagedAddLn                    { bg="#3d5213", }, -- GitSignsStagedAddLn xxx cterm= gui= guibg=#3d5213
    GitSignsStagedChangeLn                 { bg="#27406b", }, -- GitSignsStagedChangeLn xxx cterm= gui= guibg=#27406b
    GitSignsStagedChangedeleteLn           { bg="#27406b", }, -- GitSignsStagedChangedeleteLn xxx cterm= gui= guibg=#27406b
    Terminal                               { fg="#f6f6ec", bg="#26292c", }, -- Terminal       xxx guifg=#f6f6ec guibg=#26292c
    iCursor                                { gui="reverse", }, -- iCursor        xxx gui=reverse
    PmenuSelBold                           { fg="#333842", bg="#fa8419", }, -- PmenuSelBold   xxx guifg=#333842 guibg=#fa8419
    debugBreakpoint                        { fg="#26292c", bg="#f3005f", }, -- debugBreakpoint xxx guifg=#26292c guibg=#f3005f
    CursorIM                               { gui="reverse", }, -- CursorIM       xxx gui=reverse
    vCursor                                { gui="reverse", }, -- vCursor        xxx gui=reverse
    VisualNOS                              { bg="#2e323c", }, -- VisualNOS      xxx guibg=#2e323c
    CursorWord1                            { fg="#000000", bg="#f6f6ec", }, -- CursorWord1    xxx guifg=#000000 guibg=#f6f6ec
    sym"@definition"                       { fg="#97e023", }, -- @definition    xxx guifg=#97e023
    sym"@definition.type"                  { fg="#97e023", }, -- @definition.type xxx guifg=#97e023
    sym"@definition.var"                   { fg="#97e023", }, -- @definition.var xxx guifg=#97e023
    sym"@reference"                        { fg="#f6f6ec", }, -- @reference     xxx guifg=#f6f6ec
    sym"@scope"                            { fg="#f6f6ec", }, -- @scope         xxx guifg=#f6f6ec
    sym"@uri"                              { fg="#78dce8", gui="underline", }, -- @uri           xxx gui=underline guifg=#78dce8
    sym"@conditional.ternary"              { fg="#f3005f", }, -- @conditional.ternary xxx guifg=#f3005f
    sym"@definition.parameter"             { fg="#fa8419", }, -- @definition.parameter xxx guifg=#fa8419
    LspSignatureActiveParameter            { fg="#fa8419", }, -- LspSignatureActiveParameter xxx guifg=#fa8419
    sym"@text.diff.add"                    { fg="#3d5213", }, -- @text.diff.add xxx guifg=#3d5213
    sym"@strike"                           { fg="#72696a", }, -- @strike        xxx guifg=#72696a
    sym"@text.diff.delete"                 { fg="#4a0f23", }, -- @text.diff.delete xxx guifg=#4a0f23
    sym"@text.quote"                       { fg="#72696a", }, -- @text.quote    xxx guifg=#72696a
    CmpDocumentation                       { fg="#f6f6ec", bg="#211f22", }, -- CmpDocumentation xxx guifg=#f6f6ec guibg=#211f22
    CmpDocumentationBorder                 { fg="#f6f6ec", bg="#211f22", }, -- CmpDocumentationBorder xxx guifg=#f6f6ec guibg=#211f22
    sym"@definition.macro"                 { fg="#97e023", }, -- @definition.macro xxx guifg=#97e023
    CursorWord0                            { fg="#000000", bg="#f6f6ec", }, -- CursorWord0    xxx guifg=#000000 guibg=#f6f6ec
    sym"@definition.import"                { fg="#f6f6ec", }, -- @definition.import xxx guifg=#f6f6ec
    dbui_tables                            { fg="#f6f6ec", }, -- dbui_tables    xxx guifg=#f6f6ec
    sym"@definition.function"              { fg="#97e023", }, -- @definition.function xxx guifg=#97e023
    sym"@definition.field"                 { fg="#97e023", }, -- @definition.field xxx guifg=#97e023
    sym"@definition.enum"                  { fg="#97e023", }, -- @definition.enum xxx guifg=#97e023
    sym"@definition.constant"              { fg="#97e023", }, -- @definition.constant xxx guifg=#97e023
    sym"@math"                             { fg="#dfd561", }, -- @math          xxx guifg=#dfd561
    sym"@conceal"                          { fg="#72696a", }, -- @conceal       xxx guifg=#72696a
    sym"@definition.associated"            { fg="#97e023", }, -- @definition.associated xxx guifg=#97e023
    sym"@storageclass.lifetime"            { fg="#78dce8", }, -- @storageclass.lifetime xxx guifg=#78dce8
    sym"@definition.method"                { fg="#97e023", }, -- @definition.method xxx guifg=#97e023
    sym"@definition.namespace"             { fg="#f6f6ec", }, -- @definition.namespace xxx guifg=#f6f6ec
  }
end)
return theme

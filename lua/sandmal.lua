-- Theme: sandmal
-- Author: Sandmal
-- License: MIT
-- Source: http://github.com/sandmal/colorscheme
local sandmal = {
  base0      = '#1B2229';
  base1      = '#1c1f24';
  base2      = '#202328';
  base3      = '#23272e';
  base4      = '#3f444a';
  base5      = '#5B6268';
  base6      = '#73797e';
  base7      = '#9ca0a4';
  base8      = '#b1b1b1';

  -- bg = '#282a36';
  bg = 'none';
  bg1 = '#504945';
  bg_popup = '#3E4556';
  bg_highlight  = '#2E323C';
  bg_visual = '#b3deef';

  fg = '#E5DDC8';
 fg_alt = '#b4b6c2';

  red = '#e95678';

  redwine = '#d16d9e';
  orange = '#D98E48';
  yellow = '#f0c674';

  light_green = '#abcf84';
  green = '#afd700';
  dark_green = '#98be65';

  cyan = '#36d0e0';
  blue = '#61afef';
  violet = '#b294bb';
  magenta = '#c678dd',
  teal = '#1abc9c';
  grey = '#928374';
  brown = '#c78665';
  black = '#000000';

  bracket = '#80A0C2';
  currsor_bg = '#4f5b66';
  none = 'NONE';
}

function sandmal.terminal_color()
  vim.g.terminal_color_0 = sandmal.bg
  vim.g.terminal_color_1 = sandmal.red
  vim.g.terminal_color_2 = sandmal.green
  vim.g.terminal_color_3 = sandmal.yellow
  vim.g.terminal_color_4 = sandmal.blue
  vim.g.terminal_color_5 = sandmal.violet
  vim.g.terminal_color_6 = sandmal.cyan
  vim.g.terminal_color_7 = sandmal.bg1
  vim.g.terminal_color_8 = sandmal.brown
  vim.g.terminal_color_9 = sandmal.red
  vim.g.terminal_color_10 = sandmal.green
  vim.g.terminal_color_11 = sandmal.yellow
  vim.g.terminal_color_12 = sandmal.blue
  vim.g.terminal_color_13 = sandmal.violet
  vim.g.terminal_color_14 = sandmal.cyan
  vim.g.terminal_color_15 = sandmal.fg
end

function sandmal.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end


function sandmal.load_syntax()
  local syntax = {
    Normal = {fg = sandmal.fg,bg=sandmal.bg};
    Terminal = {fg = sandmal.fg,bg=sandmal.bg};
    SignColumn = {fg=sandmal.fg,bg=sandmal.bg};
    FoldColumn = {fg=sandmal.fg_alt,bg=sandmal.black};
    VertSplit = {fg=sandmal.black,bg=sandmal.bg};
    Folded = {fg=sandmal.grey,bg=sandmal.bg_highlight};
    EndOfBuffer = {fg=sandmal.bg,bg=sandmal.none};
    IncSearch = {fg=sandmal.bg1,bg=sandmal.orange,style=sandmal.none};
    Search = {fg=sandmal.bg,bg=sandmal.orange};
    ColorColumn = {fg=sandmal.none,bg=sandmal.bg_highlight};
    Conceal = {fg=sandmal.grey,bg=sandmal.none};
    Cursor = {fg=sandmal.none,bg=sandmal.none,style='reverse'};
    vCursor = {fg=sandmal.none,bg=sandmal.none,style='reverse'};
    iCursor = {fg=sandmal.none,bg=sandmal.none,style='reverse'};
    lCursor = {fg=sandmal.none,bg=sandmal.none,style='reverse'};
    CursorIM = {fg=sandmal.none,bg=sandmal.none,style='reverse'};
    CursorColumn = {fg=sandmal.none,bg=sandmal.bg_highlight};
    CursorLine = {fg=sandmal.none,bg=sandmal.bg_highlight};
    LineNr = {fg=sandmal.base4};
    qfLineNr = {fg=sandmal.cyan};
    CursorLineNr = {fg=sandmal.blue};
    DiffAdd = {fg=sandmal.black,bg=sandmal.dark_green};
    DiffChange = {fg=sandmal.black,bg=sandmal.yellow};
    DiffDelete = {fg=sandmal.black,bg=sandmal.red};
    DiffText = {fg=sandmal.black,bg=sandmal.fg};
    Directory = {fg=sandmal.blue,bg=sandmal.none};
    ErrorMsg = {fg=sandmal.red,bg=sandmal.none,style='bold'};
    WarningMsg = {fg=sandmal.yellow,bg=sandmal.none,style='bold'};
    ModeMsg = {fg=sandmal.fg,bg=sandmal.none,style='bold'};
    MatchParen = {fg=sandmal.red,bg=sandmal.none};
    NonText = {fg=sandmal.bg1};
    Whitespace = {fg=sandmal.base4};
    SpecialKey = {fg=sandmal.bg1};
    Pmenu = {fg=sandmal.fg,bg=sandmal.bg_popup};
    PmenuSel = {fg=sandmal.base0,bg=sandmal.blue};
    PmenuSelBold = {fg=sandmal.base0,g=sandmal.blue};
    PmenuSbar = {fg=sandmal.none,bg=sandmal.base4};
    PmenuThumb = {fg=sandmal.violet,bg=sandmal.light_green};
    WildMenu = {fg=sandmal.fg,bg=sandmal.green};
    Question = {fg=sandmal.yellow};
    NormalFloat = {fg=sandmal.base8,bg=sandmal.bg_highlight};
    Tabline = {fg=sandmal.base6,bg=sandmal.base2};
    TabLineFill = {style=sandmal.none};
    TabLineSel = {fg=sandmal.fg,bg=sandmal.blue};
    StatusLine = {fg=sandmal.base8,bg=sandmal.none,style=sandmal.none};
    StatusLineNC = {fg=sandmal.grey,bg=sandmal.none,style=sandmal.none};
    SpellBad = {fg=sandmal.red,bg=sandmal.none,style='undercurl'};
    SpellCap = {fg=sandmal.blue,bg=sandmal.none,style='undercurl'};
    SpellLocal = {fg=sandmal.cyan,bg=sandmal.none,style='undercurl'};
    SpellRare = {fg=sandmal.violet,bg=sandmal.none,style = 'undercurl'};
    Visual = {fg=sandmal.black,bg=sandmal.bg_visual};
    VisualNOS = {fg=sandmal.black,bg=sandmal.bg_visual};
    QuickFixLine = {fg=sandmal.violet,style='bold'};
    Debug = {fg=sandmal.orange};
    debugBreakpoint = {fg=sandmal.bg,bg=sandmal.red};

    Boolean = {fg=sandmal.orange};
    Number = {fg=sandmal.brown};
    Float = {fg=sandmal.brown};
    PreProc = {fg=sandmal.violet};
    PreCondit = {fg=sandmal.violet};
    Include = {fg=sandmal.violet};
    Define = {fg=sandmal.violet};
    Conditional = {fg=sandmal.magenta};
    Repeat = {fg=sandmal.magenta};
    Keyword = {fg=sandmal.green};
    Typedef = {fg=sandmal.red};
    Exception = {fg=sandmal.red};
    Statement = {fg=sandmal.red};
    Error = {fg=sandmal.red};
    StorageClass = {fg=sandmal.orange};
    Tag = {fg=sandmal.orange};
    Label = {fg=sandmal.orange};
    Structure = {fg=sandmal.orange};
    Operator = {fg=sandmal.redwine};
    Title = {fg=sandmal.orange,style='bold'};
    Special = {fg=sandmal.yellow};
    SpecialChar = {fg=sandmal.yellow};
    Type = {fg=sandmal.teal};
    Function = {fg=sandmal.yellow};
    String = {fg=sandmal.light_green};
    Character = {fg=sandmal.green};
    Constant = {fg=sandmal.cyan};
    Macro = {fg=sandmal.cyan};
    Identifier = {fg=sandmal.blue};

    Comment = {fg=sandmal.base6};
    SpecialComment = {fg=sandmal.grey};
    Todo = {fg=sandmal.violet};
    Delimiter = {fg=sandmal.fg};
    Ignore = {fg=sandmal.grey};
    Underlined = {fg=sandmal.none,style='underline'};

    DashboardShortCut = {fg=sandmal.magenta};
    DashboardHeader = {fg=sandmal.orange};
    DashboardCenter = {fg=sandmal.cyan};
    DashboardFooter = {fg=sandmal.yellow,style='bold'};
  }
  return syntax
end

function sandmal.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = {fg=sandmal.cyan};
    TSMethod = {fg=sandmal.cyan};
    TSKeywordFunction = {fg=sandmal.red};
    TSProperty = {fg=sandmal.yellow};
    TSType = {fg=sandmal.teal};
    TSVariable = {fg=sandmal.blue};
    TSPunctBracket = {fg=sandmal.bracket};

    vimCommentTitle = {fg=sandmal.grey,style='bold'};
    vimLet = {fg=sandmal.orange};
    vimVar = {fg=sandmal.cyan};
    vimFunction = {fg=sandmal.redwine};
    vimIsCommand = {fg=sandmal.fg};
    vimCommand = {fg=sandmal.blue};
    vimNotFunc = {fg=sandmal.violet,style='bold'};
    vimUserFunc = {fg=sandmal.yellow,style='bold'};
    vimFuncName= {fg=sandmal.yellow,style='bold'};

    diffAdded = {fg = sandmal.dark_green};
    diffRemoved = {fg =sandmal.red};
    diffChanged = {fg = sandmal.blue};
    diffOldFile = {fg = sandmal.yellow};
    diffNewFile = {fg = sandmal.orange};
    diffFile    = {fg = sandmal.aqua};
    diffLine    = {fg = sandmal.grey};
    diffIndexLine = {fg = sandmal.violet};

    gitcommitSummary = {fg = sandmal.red};
    gitcommitUntracked = {fg = sandmal.grey};
    gitcommitDiscarded = {fg = sandmal.grey};
    gitcommitSelected = { fg=sandmal.grey};
    gitcommitUnmerged = { fg=sandmal.grey};
    gitcommitOnBranch = { fg=sandmal.grey};
    gitcommitArrow  = {fg = sandmal.grey};
    gitcommitFile  = {fg = sandmal.dark_green};

    VistaBracket = {fg=sandmal.grey};
    VistaChildrenNr = {fg=sandmal.orange};
    VistaKind = {fg=sandmal.purpl};
    VistaScope = {fg=sandmal.red};
    VistaScopeKind = {fg=sandmal.blue};
    VistaTag = {fg=sandmal.magenta,style='bold'};
    VistaPrefix = {fg=sandmal.grey};
    VistaColon = {fg=sandmal.magenta};
    VistaIcon = {fg=sandmal.yellow};
    VistaLineNr = {fg=sandmal.fg};

    GitGutterAdd = {fg=sandmal.dark_green};
    GitGutterChange = {fg=sandmal.blue};
    GitGutterDelete = {fg=sandmal.red};
    GitGutterChangeDelete = {fg=sandmal.violet};

    GitSignsAdd = {fg=sandmal.dark_green};
    GitSignsChange = {fg=sandmal.blue};
    GitSignsDelete = {fg=sandmal.red};
    GitSignsAddNr = {fg=sandmal.dark_green};
    GitSignsChangeNr = {fg=sandmal.blue};
    GitSignsDeleteNr = {fg=sandmal.red};
    GitSignsAddLn = {bg=sandmal.bg_popup};
    GitSignsChangeLn = {bg=sandmal.bg_highlight};
    GitSignsDeleteLn = {bg=sandmal.bg1};

    SignifySignAdd = {fg=sandmal.dark_green};
    SignifySignChange = {fg=sandmal.blue};
    SignifySignDelete = {fg=sandmal.red};

    dbui_tables = {fg=sandmal.blue};

    LspDiagnosticsSignError = {fg=sandmal.red};
    LspDiagnosticsSignWarning = {fg=sandmal.yellow};
    LspDiagnosticsSignInformation = {fg=sandmal.blue};
    LspDiagnosticsSignHint = {fg=sandmal.cyan};

    LspDiagnosticsVirtualTextError = {fg=sandmal.red};
    LspDiagnosticsVirtualTextWarning= {fg=sandmal.yellow};
    LspDiagnosticsVirtualTextInformation = {fg=sandmal.blue};
    LspDiagnosticsVirtualTextHint = {fg=sandmal.cyan};

    LspDiagnosticsUnderlineError = {style="undercurl",sp=sandmal.red};
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=sandmal.yellow};
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=sandmal.blue};
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=sandmal.cyan};

    CursorWord0 = {bg=sandmal.currsor_bg};
    CursorWord1 = {bg=sandmal.currsor_bg};

    NvimTreeFolderName = {fg=sandmal.blue};
    NvimTreeRootFolder = {fg=sandmal.red,style='bold'};
    NvimTreeSpecialFile = {fg=sandmal.fg,bg=sandmal.none,stryle='NONE'};

    TelescopeBorder = {fg=sandmal.teal};
    TelescopePromptBorder = {fg=sandmal.blue};
    TelescopeMatching = {fg=sandmal.teal};
    TelescopeSelection = {fg=sandmal.yellow,bg=sandmal.bg_highlight,style= 'bold'};
    TelescopeSelectionCaret = {fg=sandmal.yellow};
    TelescopeMultiSelection = {fg=sandmal.teal};
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  sandmal.terminal_color()
  local syntax = sandmal.load_plugin_syntax()
  for group,colors in pairs(syntax) do
    sandmal.highlight(group,colors)
  end
  async_load_plugin:close()
end))

function sandmal.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  -- vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'sandmal'
  local syntax = sandmal.load_syntax()
  for group,colors in pairs(syntax) do
    sandmal.highlight(group,colors)
  end
  async_load_plugin:send()
end

sandmal.colorscheme()

return sandmal

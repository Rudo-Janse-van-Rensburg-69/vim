-------------------------------
-- Options
-------------------------------
local set = vim.opt
set.tabstop= 2                                --Number of columns/spaces occupied by a tab.
set.softtabstop=4                             --See multiple spaces as tabstops so <BS> does the right thing.
set.shiftwidth=4                              --Change the number of space characters inserted for indentation.
set.smarttab=true                             --Makes tabbing smarter.
set.expandtab=true                            --Converts tabs to spaces.
set.smartindent=true                          --Makes indenting smart.
set.autoindent=true                           --Good auto indent.
set.laststatus=0                              --Always display the status line.
set.number=true                               --Show line numbers.
set.relativenumber=true                       --Show line numbers starting from current one.
set.cursorline=true                           --Enable highlighting of the current line.
set.backup=false                              --Recommended by CoC.
set.swapfile=false                            --No swap file.
set.scrolloff=7                               --Keep 7 lines below while scrolling.

set.wrap = false                              --Display long lines just as one line.
set.encoding="utf-8"                          --The encoding displayed.
set.fileencoding="utf-8"                      --The encoding written to file.
set.ruler=true                                --Show the cursor position all the time.
set.cmdheight=2                               --More space for displaying messages.
set.mouse="a"                                 --Enable your mouse.
set.termguicolors = true                      --Expands the number of usable colors, if the terminal emulator supports its.
set.conceallevel=0                            --
set.clipboard = "unnamedplus"                 --Enables the clipboard between Neovim and other system programs.
set.completeopt ={"menu","menuone","noselect"}--Modifies the behavior of the auto-complete menu to behave more like an IDE.
set.foldexpr = "nvim_treesitter#foldexpr()"   --
set.foldmethod = "manual"                     --
set.hidden = true                             --Hide unused buffers.
set.inccommand = "split"                      --Show replacements in a split window, before applying to the file.
set.splitbelow = true                         --
set.splitright = true                         --
set.title = true                              --
set.ttimeoutlen = 0                           --By default is 1000ms
set.updatetime = 250                          --Faster completion. 
set.wildmenu = true                           --

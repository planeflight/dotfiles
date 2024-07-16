local opt = vim.opt -- for conciseness
-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true
opt.colorcolumn = "80"

-- cursor
opt.guicursor = ""

-- highlight current line
opt.cursorline = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- mouse
opt.mouse = "a"

local o = vim.opt

o.undofile = true
o.autowrite = true

-- Search
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.grepprg = "rg -nH "

-- Indentation
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true

-- Formatting
o.textwidth = 80
o.formatoptions = "tcqwjp"

-- Cosmetics
o.termguicolors = true
o.signcolumn = "auto:2-5"
vim.cmd("colorscheme codedark")
-- o.statusline = "%n:%f %m%h%r%w%=%l/%L %y%q"
o.laststatus = 1
o.ruler = true
o.rulerformat = "%=%n%M:%t%<%R%H%W"

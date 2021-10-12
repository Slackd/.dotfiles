let g:indent_blankline_filetype_exclude = ['help', 'vimwiki', 'man', 'dashboard', 'TelescopePrompt']

lua <<EOF

require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal", "nofile"},
}


EOF

" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

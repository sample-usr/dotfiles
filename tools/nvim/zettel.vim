" variable to store the location of our notes/zettelkasten
let g:zettelkasten = "~/notes/"

" command that creates a new file with 'timestamp_NAME.md'
command! -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "_<args>.md"

nnoremap <leader>nz :NewZettel<Space>

" makes a link to another note e.g. [title][yyyymmddhh.md]
function! s:make_note_link(l)
  " fzf#vim#complete returns a list with all info in index 0
  let line = split(a:l[0], ':')
  let ztk_id = l:line[0]

  try
    let ztk_title = substitute(l:line[2], '\#\+\s\+', '', 'g')
  catch
    let ztk_title = substitute(l:line[1], '\#\+\s\+', '', 'g')
  endtry

  let mdlink = "[" . ztk_title ."](". ztk_id .")"
  return mdlink
endfunction

" shortcut for creating the note link
inoremap <expr> <leader>nl fzf#vim#complete({
  \ 'source':  'rg --no-heading --smart-case  .',
  \ 'reducer': function('<sid>make_note_link'),
  \ 'options': '--multi --reverse --margin 15%,0',
  \ 'up':    5})

" Generate ctags
nnoremap <leader>ntt :!ctags -R . <CR>

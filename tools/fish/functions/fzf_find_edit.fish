function fzf_find_edit -a search_term -d="finds and edits a file in the default editor"
    set -l file (fzf --query="$search_term" --no-multi --select-1 --exit-0 --preview 'bat --color=always --line-range :500 {}')

    if test -e $file
        $EDITOR "$file"
    end
end

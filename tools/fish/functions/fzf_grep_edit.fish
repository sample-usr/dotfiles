function fzf_grep_edit -a search_term -d="finds a text in all files"
    set -l match (rg --color=never --line-number "$search_term" | fzf --no-multi --delimiter : --preview "bat --color=always --line-range {2}: {1}")

    set -l file (echo "$match" | cut -d':' -f1)

    if test -e $file
        $EDITOR "$file" +$(echo "$match" | cut -d':' -f2)
    end
end

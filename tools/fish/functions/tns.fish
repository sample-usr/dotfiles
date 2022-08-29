function tns
    tmux new -s (pwd | sed 's/.*\///g') -d
end

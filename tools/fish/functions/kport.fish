function kport -a port -d="Kills the specified port"
    lsof -ti tcp:$port | xargs kill
end

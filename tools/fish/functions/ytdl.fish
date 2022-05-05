function ytdl -a link -d="Downloads the link in mp3 audio"
    youtube-dl "$link" -x --audio-format=mp3
end

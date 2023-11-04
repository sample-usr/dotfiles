function ytdl -a link -d="Downloads the link in mp3 audio"
    yt-dlp "$link" -x --audio-format=mp3
end

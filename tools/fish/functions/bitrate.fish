function bitrate -a audio_file -d="Get the bitrate of an audio file"
    afinfo $audio_file | grep "bit rate"
end

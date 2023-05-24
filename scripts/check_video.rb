require 'mediainfo'

file_name = 'test.mp4'
media_info = MediaInfo.from(file_name)
p media_info

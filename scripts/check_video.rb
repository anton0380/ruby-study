require 'mediainfo'

file_name = 'test.mp4'
media_info = MediaInfo.from(file_name)
puts media_info
p media_info.general.filesize
puts "full size = #{media_info.general.filesize}"
puts "header size = #{media_info.general.headersize}"
puts "data size = #{media_info.general.datasize}"
puts "footer size = #{media_info.general.footersize}"
size = media_info.general.filesize
sum = media_info.general.headersize + media_info.general.datasize + media_info.general.footersize
if size == sum
  puts 'ok'
else
  puts 'error'
end

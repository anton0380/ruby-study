require 'mediainfo'
require 'find'

def check_file(file_name)
  print file_name
  media_info = MediaInfo.from(file_name)
  data_size = media_info.general.datasize
  video_size = media_info.video.streamsize
  audio_size = media_info.audio.streamsize
  surplus = data_size - video_size - audio_size
  print " #{surplus} "
  correct = !surplus.negative?
  if correct
    puts 'ok'
  else
    puts 'error'
  end
  correct
end

# select dir
files_path = Dir.pwd
if ARGV.size == 1
  files_path = ARGV[0]  
end
puts "check path = #{files_path}"

# find files and check
Find.find(files_path) do |path|
  if FileTest.directory?(path)
    next
  else
    if File.extname(path) == '.mp4'
      check_file(path)
    end
  end
end

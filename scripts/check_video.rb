require 'mediainfo'
require 'find'

class String
  # colorization
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def blue
    colorize(34)
  end

  def pink
    colorize(35)
  end

  def light_blue
    colorize(36)
  end
end


def check_file(file_name)
  begin
    media_info = MediaInfo.from(file_name)
    data_size = media_info.general.datasize
    video_size = media_info.video.streamsize
    # video may be without audio
    audio_size = media_info.audio ? media_info.audio.streamsize : 0
    surplus = data_size - video_size - audio_size
    correct = !surplus.negative?
    if !correct
      # incorrect data size
      puts "#{file_name} #{surplus} " + "error".red
      # File.delete file_name
    end
  rescue NoMethodError
    # error in parse file header
    puts "#{file_name} " + "warning".yellow
    # File.delete file_name
  end
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
      check_file path
    end
  end
end

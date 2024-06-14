require 'find'

# select dir
files_path = Dir.pwd
if ARGV.size == 1
  files_path = ARGV[0]  
end
puts "convert path = #{files_path}"

# find files
commands = []
Find.find(files_path) do |path|
  if FileTest.directory?(path)
    next
  else
    if File.extname(path) == '.avi'
      path_name = "#{File.dirname(path)}/#{File.basename(path, '.avi')}"
      commands.append "ffmpeg -fflags +genpts -i '#{path_name}.avi' -c:v copy -c:a copy '#{path_name}.mkv'"
    end
  end
end
commands.each do |command|
  # Kernel::exec(command)
  IO.popen(command)
end

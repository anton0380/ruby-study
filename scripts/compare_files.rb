require 'find'
require 'fileutils'

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

# select dir
files_path = Dir.pwd
if ARGV.size == 1
  files_path = ARGV[0]  
end
puts "compare path = #{files_path}"

path_list = []
Find.find(files_path) do |path|
  path_list.push(path) unless FileTest.directory?(path)
end

path_list.each do |path1|
  path_list.each do |path2|
    if path1 != path2
      if FileUtils.cmp(path1, path2)
        path_delete = File.basename(path2).size > File.basename(path1).size ? path1 : path2
        if path_delete == path2
          puts "delete: #{path_delete}"
          File.delete path_delete
          path_list.delete path_delete
        end
      end
    end
  end
end

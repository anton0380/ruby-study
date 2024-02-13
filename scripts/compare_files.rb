require 'find'
require 'fileutils'

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

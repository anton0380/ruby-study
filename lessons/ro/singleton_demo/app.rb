class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end

  def self.say_something
    puts 'haha'
  end

  def log_something wat
    @f.puts wat
  end
end

Logger.say_something
logger = Logger.new
logger.log_something 'hey!'

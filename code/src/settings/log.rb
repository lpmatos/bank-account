require "logger"
require "colorize"
require "singleton"
require_relative "multio.rb"

class Log

  include Singleton
  attr_accessor :logger
  @@log_file = nil


  def initialize
    @log_file = @@log_file
    @logger = Logger.new MultiIO.new(STDOUT) unless @log_file
    @logger = Logger.new MultiIO.new(STDOUT, File.open(@log_file, "a")) if @log_file

    @logger.level = Logger::INFO

    @logger.formatter = proc do |severity, datetime, progname, msg|
      datetime = "[#{datetime.strftime('%Y-%m-%d %H:%M:%S')}]"
      case severity
        when "INFO"
          puts "#{severity.colorize(:black).on_green.underline} - #{datetime} - #{msg}\n"
        when "WARN"
          puts "#{severity.colorize(:black).on_yellow.underline} - #{datetime} - #{msg}\n"
        when "ERROR"
          puts "#{severity.colorize(:black).on_red.underline} - #{datetime} - #{msg}\n"
      end
    end
  end

  def info message, color=:green
    @logger.info(message)
  end

  def debug  message, color=:green
    @logger.debug(message)
  end

  def error message, color=:green
    @logger.error(message)
  end

  def warn message
    @logger.warn(message)
  end

  def set_level level
    @logger.level = level
  end

  def self.log_file= log_file
    @@log_file = log_file
  end

end

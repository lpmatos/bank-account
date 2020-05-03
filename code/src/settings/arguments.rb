require "optparse"
require_relative "../utils/constants"

class Arguments

  def initialize
    @options = {}
  end

  def command_line_parser
    OptionParser.new do |opts|
      opts.banner = "Usage: main.rb [options]"
      opts.on("-h", "--help", "Show help documentation") { |value| @options[:help] = puts Constants::Messages::HELP; exit 1 }
      opts.on("-log", "--log", "Used if you want a log file") { |value| @options[:log] = value ? true : false }
      opts.on("-c", "--color", "Show puts without colors") { |value| @options[:color] = value ? true : false }
      opts.on("-V", "--verbose", "If set, print verbose output") { |value| @options[:verbose] = value ? true : false }
      opts.on("-v", "--version", "Show Bank Account Version") { |value| @options[:version] = puts Constants::Messages::BANK_ACCOUNT_VERSION; exit }
    end.parse!
    return @options
  end

end

require "optparse"
require_relative "../utils/constants"

class Arguments

  def initialize
    @options = {
      verbose: false
    }
  end

  def command_line_parser
    OptionParser.new do |opts|
      opts.banner = "Usage: main.rb [options]"
      opts.on("-h", "--help", "Show help documentation") { |value| @options[:help] = puts Constants::Messages::HELP; exit 1 }
      opts.on("-n", "--no_color", "Show puts without colors") { |value| @options[:no_color] = value }
      opts.on("-log_dir", "--log_dir", "Log Directory") { |value| @options[:log_dir] = value }
      opts.on("-log_file", "--log_file", "Log File") { |value| @options[:log_file] = value }
      opts.on("-log_level", "--log_level", "Log Level") { |value| @options[:log_level] = value }
      opts.on("-V", "--verbose", "If set, print verbose output") { |value| @options[:verbose] = true }
      opts.on("-v", "--version", "Show Bank Account Version") { |value| @options[:version] = puts Constants::Messages::BANK_ACCOUNT_VERSION; exit }
    end.parse!
    return @options
  end

end

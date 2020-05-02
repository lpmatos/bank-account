require_relative "../version"

class Arguments

  attr_reader :program_name

  def initialize
    @program_name = File.basename(__FILE__).colorize(:yellow)
    @program_version = Program::Information::VERSION.colorize(:yellow)
    @options = {
      verbose: false
    }
  end

  def command_line_parser
    OptionParser.new do |opts|
      opts.banner = "Usage: example.rb [options]"
      opts.on("-h", "--helper", "Show helper documentation") { |value| @options[:help] = helper() }
      opts.on("-n", "--no-color", "Color Usage") { |value| @options[:nocolor] = value }
      opts.on("-l", "--log", "Log File") { |value| @options[:log] = value }
      opts.on("--verbose", "If set, print verbose output") { |value| @options[:verbose] = true }
      opts.on("--version", "Show Bank Account Version") { |value| @options[:version] = version() }
    end.parse!
    return @options
  end

  private

  def helper
    puts """
  Command Line Helper to the Program - #{@program_name}
  Usage Exemple: ruby example.rb [global options] [command [command options]] [PATH]
  Global options:
  -h          | --helper                show Bank Account help.
  -n          | --no-color              don't color output. By defaults the output is colorized if a compatible terminal is detected.
  -l          | --log                   LOG is the log file path.
  -v          | --verbose               verbose mode.
  -V          | --version               print the version information.
  """
    exit 1
  end

  def version
    puts """
  Bank Account Version: #{@program_version}
    """
    exit
  end

end

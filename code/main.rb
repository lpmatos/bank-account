require_relative "src/bank"
require_relative "src/settings/log"
require_relative "src/settings/config"
require_relative "src/settings/arguments"

if __FILE__ == $0

  arguments, configuration = Arguments.new, Configuration.new
  options = arguments.command_line_parser()

  log = options[:log] ? options[:log] : configuration.log
  color = options[:color] ? options[:color] : configuration.color
  verbose = options[:verbose] ? options[:verbose] : configuration.verbose

  Log.log_file = log; logger = Log.instance

  logger.info("Starting Application...") if verbose

  bank_account = BankAccount.new(logger, color, verbose)
  bank_account.run()
end

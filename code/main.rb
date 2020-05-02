require_relative "src/bank"
require_relative "src/settings/log"
require_relative "src/settings/config"
require_relative "src/settings/arguments"

if __FILE__ == $0

  arguments, configuration = Arguments.new, Configuration.new
  options = arguments.command_line_parser()

  no_color = options["no-color"] ? options["no-color"] : configuration.no_color
  verbose = options["verbose"] ? options["verbose"] : configuration.verbose
  log_file = options["log"] ? options["log"] : configuration.log_file

  Log.log_file = log_file
  logger = Log.instance

  logger.info("Starting...")
  logger.info(no_color)
  logger.info(verbose)

  bank_account = BankAccount.new
  bank_account.run()
end

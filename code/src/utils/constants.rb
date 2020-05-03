require "colorize"
require_relative "version"

module Constants
  INFORMATION_LEN = 5

  module Messages
    INFORMATION = """
Please, enter with your information. We need:

1 - CPF
2 - Name
3 - Age
4 - Email
5 - Address

In that exact order. Enter with your information:
    """

    WELCOME = """
#{"Welcome to the bank account registration!".colorize(:black).on_yellow.underline}

#{"1. Create New Account".colorize(:black).on_blue.underline}
#{"2. Review Your Account Information".colorize(:black).on_blue.underline}
#{"3. Edit Account".colorize(:black).on_blue.underline}
#{"4. Status Accounts".colorize(:black).on_blue.underline}
#{"5. Clean Shell Information".colorize(:black).on_blue.underline}
#{"6. Program Info".colorize(:black).on_blue.underline}
#{"7. Exit and Save".colorize(:black).on_blue.underline}
#{"8. Exit".colorize(:black).on_blue.underline}

#{"Enter with your choice".colorize(:black).on_white.underline}
    """

    BYE_BYE_WITH_INFORMATION = """
Bye bye! We are saving your data.
  """

    BYE_BYE_WITHOUT_INFORMATION = """
Bye bye! We had nothing to save.
  """

    PROGRAM_INFO = """
Author: Lucca Pessoa da Silva Matos
Name: Bank Account
Description: A simple Ruby Code
Data: 02-05-2020
Version: #{Program::Information::VERSION}
"""

    HELP = """
  #{"Usage Exemple".colorize(:black).on_green.underline}: #{"ruby main.rb [global options]".colorize(:black).on_white.underline}

  #{"Global options".colorize(:black).on_yellow.underline}

  #{"-h          | --help".colorize(:black).on_white.underline}                #{"show Bank Account help.".colorize(:black).on_blue.underline}
  #{"-n          | --no_color".colorize(:black).on_white.underline}              #{"don't color output. By defaults the output is colorized if a compatible terminal is detected.".colorize(:black).on_blue.underline}
  #{"-log_dir    | --log_dir".colorize(:black).on_white.underline}               #{"LOG DIR is the log directory.".colorize(:black).on_blue.underline}
  #{"-log_file   | --log_file".colorize(:black).on_white.underline}              #{"LOG FILE is the log file.".colorize(:black).on_blue.underline}
  #{"-log_info   | --log_info".colorize(:black).on_white.underline}              #{"LOG INFO is the log info.".colorize(:black).on_blue.underline}
  #{"-v          | --verbose".colorize(:black).on_white.underline}               #{"verbose mode.".colorize(:black).on_blue.underline}
  #{"-V          | --version".colorize(:black).on_white.underline}               #{"print the version information.".colorize(:black).on_blue.underline}

"""

    BANK_ACCOUNT_VERSION = """
  #{"Bank Account Version".colorize(:black).on_white.underline}: #{Program::Information::VERSION.colorize(:yellow)}

"""

  end

end

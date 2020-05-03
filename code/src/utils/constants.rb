require "colorize"
require_relative "version"

module Constants
  INFORMATION_LEN = 5

  module Messages

      WELCOME_WITHOUT_COLOR = """
Welcome to the bank account registration!

1. Create New Account
2. Review Your Account Information
3. Edit Account
4. Status Accounts
5. Clean Shell Information
6. Program Info
7. Exit and Save
8. Exit

Enter with your choice
"""

    WELCOME_WITH_COLOR = """
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

    INFORMATION_WITHOUT_COLOR = """
Please, enter with your information. We need:

1 - CPF
2 - Name
3 - Age
4 - Email
5 - Address

In that exact order. Enter with your information:
"""

    INFORMATION_WITH_COLOR = """
#{"Please, enter with your information. We need".colorize(:black).on_yellow.underline}:

#{"1 - CPF".colorize(:black).on_blue.underline}
#{"2 - Name".colorize(:black).on_blue.underline}
#{"3 - Age".colorize(:black).on_blue.underline}
#{"4 - Email".colorize(:black).on_blue.underline}
#{"5 - Address".colorize(:black).on_blue.underline}

#{"In that exact order. Enter with your information:".colorize(:black).on_white.underline}
"""

    BYE_BYE_WITH_INFORMATION_AND_WITHOUT_COLOR = """
Bye bye! We are saving your data.

"""

    BYE_BYE_WITH_INFORMATION_AND_WITH_COLOR = """
#{"Bye bye! We are saving your data.".colorize(:black).on_white.underline}

"""

    BYE_BYE_WITHOUT_INFORMATION_AND_WITHOUT_COLOR = """
Bye bye! We had nothing to save.
"""

    BYE_BYE_WITHOUT_INFORMATION_AND_WITH_COLOR = """
#{"Bye bye! We had nothing to save.".colorize(:black).on_white.underline}
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
  #{"-log        | --log".colorize(:black).on_white.underline}                 #{"enable log file.".colorize(:black).on_blue.underline}
  #{"-c          | --color".colorize(:black).on_white.underline}               #{"color output.".colorize(:black).on_blue.underline}
  #{"-v          | --verbose".colorize(:black).on_white.underline}             #{"verbose mode.".colorize(:black).on_blue.underline}
  #{"-V          | --version".colorize(:black).on_white.underline}             #{"print the version information.".colorize(:black).on_blue.underline}

"""

    BANK_ACCOUNT_VERSION = """
  #{"Bank Account Version".colorize(:black).on_white.underline}: #{Program::Information::VERSION.colorize(:yellow)}

"""

  end

end

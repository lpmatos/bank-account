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

  end

end

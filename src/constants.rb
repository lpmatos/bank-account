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
Welcome to the bank!

1. Create New Account
2. Review Your Account Information
3. Edit Account
4. Status Accounts
5. Clean Shell Information
6. Program Info
7. Exit and Save
8. Exit

Enter with your choice:
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

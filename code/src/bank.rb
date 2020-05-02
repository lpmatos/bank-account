require_relative "yml"
require_relative "search"
require_relative "constants"
require_relative "validators"

class BankAccount < BinarySearch

  attr_reader :accounts, :cpfs

  def initialize
    @yml = YMLReader.new("account.yml")
    @accounts = []
    @cpfs = []
  end

  def run
    loop do
      puts Constants::Messages::WELCOME
      input = gets.strip
      case input
      when "1"
        new_account()
      when "2"
        account_review()
      when "3"
        edit()
      when "4"
        status()
      when "5"
        system "clear" or system "cls"
      when "6"
        puts Constants::Messages::PROGRAM_INFO
      when "7"
        if @accounts.empty?
          puts Constants::Messages::BYE_BYE_WITHOUT_INFORMATION
        else
          puts Constants::Messages::BYE_BYE_WITH_INFORMATION
          @yml.save(@accounts)
        end
        break
      when "8"
        puts Constants::Messages::BYE_BYE_WITH_INFORMATION
        break
      end
    end
  end

  private

  def validate_account! account
    raise ArgumentError.new("This Email is Invalid...") unless Validators::Email.is_valid_email? account["email"]
    raise ArgumentError.new("This CPF is Invalid...") unless Validators::CPF.is_valid_cpf? account["cpf"]
    raise ArgumentError.new("This CPF Alredy Exist...") if find(@cpfs, account["cpf"])
    @accounts << account
    @cpfs << account["cpf"]
    puts "\nNew account registration successful!"
  end

  def get_information
    informations = []
    puts Constants::Messages::INFORMATION
    while info = gets.strip
      informations[informations.count] = info
      break if informations.count >= Constants::INFORMATION_LEN
    end
    return informations
  end

  def new_account
    information = get_information()
    validate_account!({"cpf" => information[0],
                          "name" => information[1],
                          "age" => information[2],
                          "email" => information[3],
                          "address" => information[4]})
  end

  def account_review
    info = @accounts.empty? ? "No Informatios.": @accounts
    puts "\nAccount Review: #{info}"
  end

  def status
    puts "\nIn this moment we have #{@accounts.length} accounts."
  end

  def edit
    if @accounts.empty?
      puts "\nWe don't have data to update"
    else
      puts "\nWhat's your CPF?"
      cpf = gets.strip
      if @cpfs.include?(cpf)
        index = @cpfs.find_index(cpf)
        current_account = @accounts[index]
        account = get_information()
        content = {"cpf" => account[0],
                    "name" => account[1],
                    "age" => account[2],
                    "email" => account[3],
                    "address" => account[4]}
        current_account[:cpf] = content[:cpf]
        current_account[:name] = content[:name]
        current_account[:age] = content[:age]
        current_account[:email] = content[:email]
        current_account[:address] = content[:address]
        puts "\n\nSuccess Update!"
      else
        puts "\nThis CPF not Exist..."
      end
    end
  end

end

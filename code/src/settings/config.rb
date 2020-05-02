class Configuration

  attr_reader :log_file

  def initialize
    @log_file = ENV["LOG_FILE"]
  end

  def variables
    return {
      "log_file" => @log_file
    }
  end

end

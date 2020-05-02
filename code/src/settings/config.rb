class Configuration

  attr_reader :log_file, :no_color, :verbose

  def initialize
    @log_file = ENV["LOG_FILE"]
    @no_color = ENV["NO_COLOR"]
    @verbose = ENV["VERBOSE"]
  end

  def variables
    return {
      "log_file" => @log_file,
      "no_color" => @no_color,
      "verbose" => @verbose
    }
  end

end

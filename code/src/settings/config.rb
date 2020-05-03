class Configuration

  attr_reader :log_dir, :log_file, :log_info, :no_color, :verbose

  def initialize
    @log_dir = ENV["LOG_DIR"]
    @log_file = ENV["LOG_FILE"]
    @log_info = ENV["LOG_INFO"]
    @no_color = ENV["NO_COLOR"]
    @verbose = ENV["VERBOSE"]
  end

  def variables
    return {
      "log_dir" => @log_dir,
      "log_file" => @log_file,
      "log_info" => @log_info,
      "no_color" => @no_color,
      "verbose" => @verbose
    }
  end

end

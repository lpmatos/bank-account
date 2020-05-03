class Configuration

  attr_reader :log, :color, :verbose

  def initialize
    @log_dir = ENV["LOG"]
    @color = ENV["COLOR"]
    @verbose = ENV["VERBOSE"]
  end

  def variables
    return {
      "log" => @log,
      "color" => @color,
      "verbose" => @verbose
    }
  end

end

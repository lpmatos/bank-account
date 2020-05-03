require "yaml"

class YMLReader

  attr_reader :file, :logger

  def initialize file, logger=nil
    @file = file
    @logger = logger
    validate!
  end

  def open
    begin
      @logger.info("Open YML File.")
      return YAML.load_file(File.join(File.dirname(__FILE__), @file))
    rescue => exception
      @logger.error("Could open the YAML File: #{exception.message}")
    end
  end

  def save content
    return nil unless content
    @logger.info("Save information in YML File.")
    File.open(@file, "r+") do |file|
      file.write(content.to_yaml)
    end
  end

  private
  def validate!
    # Check that file is defined
    raise NotDefinedError unless @file
    # Check if is a YML extesion
    raise ArgumentError unless @file.chars.last(4).join == ".yml" or @file.chars.last(5).join == ".yaml"
    # Check that the config file is exist?
    File.open(@file, "a") unless ::File.exist?(@file)
    # Check that the config file is readable?
    raise NotReadableError unless ::File.readable?(@file)
    @logger.info("YML File Okay!")
  end
end

require "yaml"

class YMLReader

  attr_reader :file, :log

  def initialize file, log=nil
    @file = file
    @log = log
    validate!
  end

  def open
    begin
      @log.info("Open YML File")
      return YAML.load_file(File.join(File.dirname(__FILE__), @file))
    rescue => exception
      @log.error("Could open the YAML File: #{exception.message}")
    end
  end

  def save content
    unless content
      return nil
    else
      @log.info("Save information in YML File")
      File.open(@file, "r+") do |file|
        file.write(content.to_yaml)
      end
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
  end
end

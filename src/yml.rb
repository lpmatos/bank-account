require "yaml"

class YMLReader

  attr_reader :file

  def initialize file
    @file = file
    validate!
  end

  def open
    begin
      return YAML.load_file(File.join(File.dirname(__FILE__), @file))
    rescue => exception
      puts "Could open the YAML File: #{exception.message}"
    end
  end

  def save content
    unless content
      return nil
    else
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

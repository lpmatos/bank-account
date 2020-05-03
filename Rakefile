# Declare a Default Task.
task default: [:helper]

# Create a Default Task.
task :helper do
  puts "This is a Helper Task... If you need other thing, please, check the documentation."
end

# Create Principal Task with namespace
namespace :main do
  # A Short description about this Task.
  desc "Base Rakefile to Install all Ruby Gems used in this code."
  # Create Task Install
  task :install do
    puts "Installing Packages with Bundle..."
    `bundle install`
  end
end

# To list your tasks - rake --tasks

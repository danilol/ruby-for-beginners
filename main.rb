require 'bundler/setup'
require 'dotenv/load'
require "irb"

# Add directories to load path and auto-load everything
%w[lib models].each do |dir|
  path = File.expand_path("./#{dir}", __dir__)
  $LOAD_PATH.unshift(path)
  Dir[File.join(path, '**', '*.rb')].sort.each { |file| require file }
end

puts "✅ All files in lib/ loaded."
puts "Available classes: #{ObjectSpace.each_object(Class).select { |c| c.name && c.name.start_with?('Db', 'Ru', 'Contestant') }.map(&:name).join(', ')}"

# Example usage
puts "\nContestants in DB:"
puts "Contestant.all"

# Optional interactive mode
require "irb"
IRB.start
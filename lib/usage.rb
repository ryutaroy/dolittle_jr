module Dolittle
  def self.usage
    puts "USAGE:"
    puts "dbm <METHODS> <OPTIONS>"
    puts ""
    puts "METHODS are ..."
    singleton_methods.sort.each do |m|
      puts "  #{m}"
    end
  end
end

if __FILE__ == $0
  Dolittle.usage
end
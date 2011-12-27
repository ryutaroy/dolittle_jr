module Dolittle
  def self.sample(*args)
    puts "Dolittle has option(s), for example #{args.join(",")}."
    puts "Dolittle has env(s), for example EVN[\"RUBYLIB\"]:#{ENV["RUBYLIB"]})."
  end
end

if __FILE__ == $0
  Dolittle.sample
end

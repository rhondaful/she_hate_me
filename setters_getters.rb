class Engine
    
    
    
    
    
    attr_accessor :speed, :type, :producer
    
    def about_engine
        return "A #{@speed} #{@type} was produced by #{@producer} and is regarded as a fast machine."
    end
end

my_engine = Engine.new
my_engine.speed = '302'
my_engine.type = 'Mustang'
my_engine.producer = 'Ford'
enginename = my_engine.speed

puts my_engine.about_engine

puts my_engine.inspect

entry_01 = { :speed => “302”, :type => “Mustang”, :producer => "Ford"}
entry_02 = { :speed => “2500”, :type => “Silverado”, :producer => "Chevy"}
entry_03 = { :speed => “626”, :type => “ ”, :producer => "Mazda"}
entry_04 = { :speed => “5x”, :type => “M-class”, :producer => "BMW"}

#winner = entry_03[:name]
#puts “#{winner} is the winner of the Mac laptop!”

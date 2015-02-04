def always_method(number)
    (((number + 5) * 2 - 4) / 2 - number)
end

puts "Please provide a number"
first_number = gets.to_i
puts 'It Should be 3, As Programmed to ' + always_method(first_number).to_s




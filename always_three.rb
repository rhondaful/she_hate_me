def always_method
    puts "Please provide a number"
    first_number = gets.to_i
    puts 'It Should be 3, As Programmed to ' + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s
end

always_method





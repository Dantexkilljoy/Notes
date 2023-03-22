puts "Enter a series of numbers, seperated by spaces:"

user_string = gets.chomp

user_numbers = user_string.split

length = user_numbers.count

p user_string
p user_numbers
puts "You entered: " + length.to_s +  " " + "numbers."

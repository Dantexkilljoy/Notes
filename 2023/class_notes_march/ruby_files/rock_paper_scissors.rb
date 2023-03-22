p "Please enter rock, paper, or scissors:"
user_input = gets.chomp

a = "rock paper scissors".split.sample
p "Computer played #{a}"

if ((user_input == "rock" && a == "paper") ||
  (user_input == "scissors" && a == "rock") ||
  (user_input == "paper" && a == "scissors"))
  puts "You lost"
elsif ((user_input == "paper" && a == "rock") ||
  (user_input == "rock" && a == "scissors") ||
  (user_input == "scissors" && a == "paper"))
  puts "you win"
else
  puts "we tied"
end
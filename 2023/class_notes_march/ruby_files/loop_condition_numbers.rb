#loop do 
 #   print "Enter a number greater than 10 to exit: "
  #  answer = gets.chomp.to_i
   # break if answer > 10
#end

def get_name
    name = ""
    loop do 
        print "Enter your name (minimum 2 characters, no numbers): "
        name = gets.chomp
        if name.length >= 2 && !name.index(/\d/) #an index that uses regular expresion that checks if digits are in the name 
            break
        else
            puts "Name must be longer than 2 characters and not contain numbers."
        end
    end
    return name
end

name = get_name()
puts "Hi #{name}!"

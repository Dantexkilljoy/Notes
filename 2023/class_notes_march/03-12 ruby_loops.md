# Ruby Loops
* A loop is a piece of ode that will run the statements inside till something is met (like done, no)
* in a loop is a block the block can begin and end with (do/end) or the {} brackets
* if it takes one line of code use braces and if it takes more than one line use do and end


# Loop conitionals
* if the codition returns true the loop will end
[conditional](./ruby_files/loop_conditional.rb)
[conditional](./ruby_files/loop_condition_numbers.rb)


# WHile loop
[conditional](./ruby_files/while_loop.rb)
* will run as long the condition is true and will break whe false

# Until loop
[conditional](./ruby_files/until.rb)
* will run as long the condition is false will break when true

# Printing the contact list
* THis is part 3
* use the each method to iterate 
```ruby
contact_list.each do |contact|
    puts "Name: #{contact["name"]}"
    if contact["phone_numbers"].size > 0
        contact["phone_numbers"].each do |phone_number|
            puts "Phone: #{phone_number}"
        end
    end
    puts "-----\n"
end
```
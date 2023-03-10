# arrays
* is cantainer of data like a list
* create an array like so
* array = Array.new
* create an araay with 3 items "array = Array.new(3, "Jason")
* create an empty array with brackets "array = []" 
* creating an array using brackets with three items "array = ["milk", "eggs", "bread", 1, 2, 3]
* Create an array using the %w notation which contains three strings: "array = %w(milk eggs bread)"
* create an array using %W(capital) contains 3 string when one is a variable "item = "milk" array = %W({item} eggs bread) 



# adding items to array
*r refer to array_addition.rb


# accessing items in arrays
* item's places in an array is called the index
* index always starts with 0
* an example:
```ruby
array = ["milk", "eggs", "bread", "ice cream", "pie", "potatoes"]
#access milk
item = arrray[0]
#access the second item
array[2]
#print out the first item using the first method
puts array.first
#print out the last item
puts array.last
puts array[-1]
#the fetch method is used to return that item too the array
puts array.fetch(2) # => "bread"
#if the item does not exist in the array 
puts array.fetch(20, "cake") # => "cake"
#return the number of items in the array
array.length
array.count
#return the number of items in the array
array.count("eggs") # => 1
#to find out if an array contains an item  use the include? method
array.include?("eggs") # => true
array.include?("toilet paper") # => false
```



# Remove things from arrays
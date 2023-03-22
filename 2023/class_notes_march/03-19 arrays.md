# Arrays
* the split method can be used on a string to return an array of substrings
```ruby
"alice bob carol".split #=> ["alice", "bob", "carol"]
```
* you can provide an arguement to the split method to slit on things like commas instead of whitespace
```ruby
"1,2,3,4,5,6,7".split(",") #=> ["1", "2", "3", "4", "5", "6", "7"]
```
* you can also split with an empty string to recieve an array of individual characters
```ruby
a = "Hello!".split(" ")#=> ["H", "e", "l", "l", "o", "!"]
a[0]#=> "H"
a[-1]#> "!"
```
* this is useful ecause we can use **gets** to get a string from users then transform it into an array
[conditional](./ruby_files/arrays_2.0.rb)

# array methods
* .count counts how many elements are in the list if no arguemnt is provided
* if an arguement is provided it tells you how many times that arguement occurs
```ruby
a = [8, 3, 1, 19, 23, 3]
a.count #=> 6
a.count(3) #=> 2
```
* .include? will tell you if the value is present within the array
* .exclude? will do the opposite of .include? 
* .reverse will make the array backwards
* .sort will sort the array from least to greatest for integers
* .shuffle will return a copy of the array in a random order
* .sample returns a single random element from the array
* .min will return the lowest element from the array for integers
* .max will return the highest element from the array for integers
* .sum will return the sum of the array for integers
* .join takes the elements in the array and puts them together on a string opposite of split

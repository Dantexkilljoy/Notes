# If statements
* basic anatomy of the if statments
```ruby
if condition
    # code that runs if the condition is true
end
```
* if the condition is true then the code is ran if it is false then the code is ignored
* type end after typing end so you do not forget to end your if statement
* indent your code on your if statements to make it visually clearer

# Multibranch if statements
* in your if elsif and end statements if none are true then the end statement is ran
* if statements are never fully true or false they are "truthy" and "falsey" statements
* false and nil are falsy while all other objects are truthy

# Comparisons
* with if statements it is best yo use expresssions that return true or false
* classes have ways to compare instances of the class to each other
* like so
```ruby
1 < 2 # 2 is greater than 1
2 < 1 # 2  is less than 1
1 == 1 #equal to
1 <= 2 # 1 is less than or equal to 2
1 >= 2 # 2 is less than or equal to 1
1 != 2 # 1 does not equal 2
```

# equivalence vs assignment
```ruby
x = 2

if x == 3 
    p "x is 3"
else
    p "x is not 3"
end
```
# combining conditions with and/or
* logical operators **AND && / OR ||** 
* with && both comparisons have to be true for the whole statement to be true
* with || either one can be true to return true
* in your if and elsif statements you can put parentheses in between your conditions and seperate them with "||" to make the code look cleaner
[conditional](./ruby_files/rock_paper_scissors.rb)

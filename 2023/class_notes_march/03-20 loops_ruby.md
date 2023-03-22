# Loops in ruby
* if: conditionally doing something once
``` ruby
numbers = Array.new

if numbers.length < 10
  new_number = rand(100)
  numbers.push(new_number)
end

len = numbers.length

p numbers
p len
```
* while: conditionally doing something multiple times
``` ruby
numbers = Array.new

while numbers.length < 10
  new_number = rand(100)
  numbers.push(new_number)
end

len = numbers.length

p numbers
p len
```
* while statements work similar to if statements but if the condition is truthy after it reaches the end it jumps back up too the while statement
* this statement above keeps looping until the length of the array is 10
* if a while method is never proven falsey it will endlessly loop

# do and end loops
* the .times method shown below needs the do method to execute its job
* this a block of code with do and end
* so the 10.times method in the block of code will execute it exactly 10 times which saves the time on writing a condition for while
``` ruby
mississipis = 1

10.times do
  p mississipis.to_s + " Mississippi"

  mississipis = mississipis + 1 
end
```
* the times method will also simplify the loop by choosing a name with pipes " | | " 
* like so 
```ruby
10.times do |mississipis|
p mississipis.to_s + "Mississipi"
end
```
* the times method starts at 0 
* other looping methods
```ruby
5.upto(10) # starts at a number then go up to a number
99.downto(80) #starts at a number and counts down to a number
1.step(10, 3) # starting at 1 and will count up to a number in this case 10 and skip every however so numbers in this case 3
10.step(1, -4) # starting at 10 will count downwards because of the negative and skip 4  until 1 in this case 
```

* A loop goes through something to search or output a result
* An if chooses what to do based on the condition it is given

**PUT THE MOST SPECIFIC CONDITION AT THE TOP OF THE LOOP**
# Hash
* use symbols cannot contain spaces, only lowercase letters, underscores, and numbers, cannot begin with a number
* symbols are started off with a : colon  used to label something internally within our code
* Hashes are not numbered instead we are labeling them ourselves
```ruby
person1 = Hash.new
p person1

person1.store(:first_name, "Raghu")  # {:first_name => "Raghu"}
p person1

person1.store(:last_name, "Betina") # {:first_name => "Raghu", :last_name => "Betina"}
p person1

person1.store(:role, "Instructor")  # {:first_name => "Raghu", :last_name => "Betina", :role => "Instructor"}
p person1

p person1.fetch(:role) # "Instructor"
```

# Creating a Hash
* A hash is represented by curly brackets and we use the .store method to add elements to a hash
* .store method takes two arguements the first is the label or key and the data itself
* Ruby represents seperating them with => a hash rocket
* If the key already exists in the hash and you go to store something it will replace it

# Fetch
* the .fetch method is to retrieve data from the hash
```ruby 
person1 = Hash.new
person1.store(:first_name, "Raghu")
person1.store(:last_name, "Betina")
person1.store(:role, "Instructor")

person2 = Hash.new
person2.store(:first_name, "Jocelyn")
person2.store(:last_name, "Williams")
person2.store(:role, "Student")

p person1.fetch(:first_name) + " is a " + person1.fetch(:role)
p person2.fetch(:first_name) + " is a " + person2.fetch(:role)
```
# fetch fallback 
* sometimes you want to call fetch on a key that might not be present so you provide fallback return value
```ruby
person1 = Hash.new
person1.store(:first_name, "Raghu")
person1.store(:last_name, "Betina")
person1.store(:role, "Instructor")

p person1.fetch(:first_name, "None provided")
p person1.fetch(:middle_name, "None provided")
```
# Hash literals 
* just typing out the full hash instead of making a new one and pluggin it in
```ruby
person1 = { :first_name => "Raghu", :last_name => "Betina", :role => "Instructor" }
person2 = { :first_name => "Jocelyn", :last_name => "Williams", :role => "Student" }
```
* Hashes are often used for arguements to methods because they let us pass in a list of inputs with nice labels
* In rails we will use hash literals directly in parenthesis of method arguements like so
```ruby
Movie.where({ :title => "The Shawshank Redemption" })
```
# Fetch shorthand
* the short hand for fetch is .[] so we would write it like so
```ruby
person1 = { :first_name => "Raghu", :last_name => "Betina", :role => "Instructor" }

p person1[:last_name]
```
**However they do not do the same thing as an arrays shorthand**
* Hash's shorthand method when using a key that is not present in the hash will return nil instead of an error
* the shorthand method is the more popular method

# Store shorthand, []=
* the shorthand for .store is []=
```ruby
person1 = Hash.new
person1[:first_name] = "Raghu"
person1[:last_name] = "Betina"
person1[:role] = "Instructor"

p person1
# => { :first_name => "Raghu", :last_name => "Betina", :role => "Instructor" }
```
* this way is similar to .store(:key, :value)

# Using .keys to explore
* A very important method when dealing with hashes you did not create yourself is .keys
* The .keys method returns an array of all the keys that are present within the hash
* We can then use the fetch method to retrieve those values attached to keys
* Keys can be anything strings integers but we almost always want to use symbols

# Values can be anything
* A hash can contain anything arrays, another hash, strings, integers
* we can use the fetch method to retrieve an array then use the at method for arrays to retrieve what we want from the array
* To retrieve a hash we can use fetch to retrieve it than retrieve the item in the hash again with fetch

# Key
* the .key method is the inverse of the .fetch method 
* it searched through each value and returns the key where it resides in the hash

# arrays are very useful for storing a list the same things in order 
# hashes are used when storing a list of things that are catagorically different from one another and label them your self







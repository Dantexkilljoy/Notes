# Ruby instantation 
* initializing a new string String.new
* initializing it with an arguement String.new("Dante")
* initializing a new array Array.new

* EVERYTHING IN RUBY IS AN OBJECT
* classes are written with capital letters first
* string.class will return String when set with string = String.new
* dante = String.new("Dante") => "Dante"
* same with array and hash Array.new Hash.new


# Ruby Objects
* Ruby is a object oriented programing
* when a string is created it beomes an objects
* you can call methods and returns a list of methods that the the object supports
* like so " string.methods"
* you can ask if an objects responds to a method by typing "string.respond_to?("upcase")


# Attribute reader
* ruby attr_reader allows us to access variables in a class outside of that class



# class methods
```ruby
class Name
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + " " + full_name()
  end


end

name = Name.new("Mr.", "Jason", "", "Seifer")
puts name.full_name_with_title

nick = Name.new("Mr.", "Nick", "", "Pettit")
puts nick.full_name_with_title
```

# Instance Variables an local Variables
```ruby
class Name
  attr_accessor :title, :first_name, :middle_name, :last_name
  attr_reader :first_and_middle_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_and_middle_name = @first_name + " " + @middle_name

    @first_and_middle_name + " " + @last_name #instance variable #scope of a variable
  end

  def full_name_with_title
    @title + " " + full_name()
  end


end
```


# the to_s method
```ruby 
class Name
  attr_accessor :title, :first_name, :middle_name, :last_name

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + " " + full_name()
  end

  def to_s
    full_name_with_title #used to print out a class
  end

end

name = Name.new("Mr.", "Jason", "", "Seifer")
puts name.full_name_with_title
puts name 
puts name.inspect # will give the internal step of the class



name = Name.new("Mr.", "Jason", "", "Seifer")
puts name.full_name_with_title
```




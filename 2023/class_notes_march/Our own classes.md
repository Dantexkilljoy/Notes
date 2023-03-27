# Modeling real world things
* We can define our own class to represent people (We will only use capital letters with classes and naming our own classes)
* If you have a multiworded name then you will CamelCase it like so "class VeryImportantPerson"
* We declare what attributes a person have with the "attr_accessor" keyword
```ruby
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :role
end
```
* Then we can store things in the attributes created for this class then call to assign and retrieve values
```ruby
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :role
end

c = Person.new
c.first_name = "Raghu"
c.last_name = "Betina"
c.role = "Instructor"


p c.last_name # => "Betina"
p c.role
p c.class # => Person
```
# Defining instance methods
* Using classes you can defin your own methods with  the "def" key like so
``` ruby
class Person
    attr_accessor :first_name
    attr_accessor :last_name

def full_name
    return self.first_name + " " + self.last_name
   end
end
```
* Now in addition to being able to store data I can now ask any person to compute their first and last name
```ruby
hs = Person.new
hs.first_name = "Homer"
hs.last_name = "Simpson"

"Hello, " + hs.full_name + "!" # => "Hello, Homer Simpson!"
```
* using the return keyword to signify what value I want to replace hs.full_name in the original expression after its been evaluated
* using the self keyword to refer to the object who was asked to calculate its full name. Since I can't know in advance what (if any) variable name will be used
``` ruby
class Person
  require("date") # We need to pull in the Date class, which is not loaded by default

  attr_accessor :birthdate

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end
end

hs = Person.new
hs.birthdate = "April 19, 1987"

hs.age # => 32, as of this writing
```
* Now every person that we create will have the ability to compute their age based on the dob attribute
* We used require date in order to load the date class program

# Defining class methods 
* methods like full_name and age are instance methods because we call them on individual instances of the person class
* We can also define class-level methods that we can call directly on the person class
* This is useful for defining reusable utility methods that dont really belong to any one individual person
```ruby 
Person.parse("Betina, Raghu")
```
```ruby
class Person
  attr_accessor :first_name
  attr_accessor :last_name

  def Person.parse(last_comma_first)
    last_first_array = last_comma_first.split(",")
    the_last_name = last_first_array.at(0).strip
    the_first_name = last_first_array.at(1).strip
    
    a_new_person = Person.new
    a_new_person.first_name = the_first_name
    a_new_person.last_name = the_last_name
    
    return a_new_person
  end
end
```
* The new things when defining parse on Person to make it a class method rather than a instance method which is why we directly call the method directly Person the capital indicating the class

# Inheritance 
* When defining a new class you can chose to inherit all the power to the parent class
```ruby
class Instructor < Person
    attr_accessor :role
end

class Student < Person
    attr_accessor :grade
end
```
* Instructors and students can do everything people can do and a bit more
* Creating the first individual instance of the Instructor class and the student class
```ruby 
person1 = Instructor.new
person1.first_name = "Raghu"
person1.last_name = "Betina"
person1.role = "Lecturer"

person2 = Student.new
person2.first_name = "Dustin"
person2.last_name = "Doyle"
person2.grade = "A"

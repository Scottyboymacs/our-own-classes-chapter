# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate
require "date"

class Person
  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :birthdate
  attr_accessor :sex
  attr_accessor :role

  def full_name
    return self.first_name + " " + self.last_name
  end

  def age
    return ((Date.today-Date.parse(self.birthdate))/365).to_i
  end
end

c = Person.new
c.first_name = "Raghu"
c.last_name = "Betina"
c.sex = 'male'
c.role = "Instructor"
c.birthdate = "June 23, 1990"


p c.full_name 
p c.role
p c.age

# PROTECTED
=begin
Protected methods are similar to private methods in that
they cannot be invoked outside the class. The main difference between them
is that protected methods allow access between class instances, while private methods do not.
=end

class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

david = Person.new(26)
anna = Person.new(29)

p david.older?(anna) #false
p anna.older?(david) #true

#p david.age # protected method 'age' called for an instance of Person (NoMethodError)
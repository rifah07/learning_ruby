=begin
The way that Method Access Control is implemented in Ruby
is through the use of the public, private, and protected access modifiers
=end

=begin
We use the private method call in our program and anything below it
is private (unless another method, like protected, is called after it to negate it)
=end

class GoodCat
  CAT_YEARS = 7

  attr_accessor :name, :age

  def initialize(n , a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * CAT_YEARS
  end

end

kitty = GoodCat.new("Kitty", 4)
#kitty.human_years # private method 'human_years' called for an instance of GoodCat (NoMethodError)

# We have made the human_years method private by placing it under the private method
# private methods are only accessible from other methods in the class.
=begin
private methods are not accessible outside of the class definition at all,
and are only accessible from inside the class when called without self(before Ruby 2.7).
=end


class Student
  attr_accessor :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end
  protected
  def grade
    @grade
  end

end

alice = Student.new("Alice", 90)
bob = Student.new("Bob", 98)

puts "Well Done!" if bob.better_grade_than?(alice)
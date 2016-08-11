class Student
  attr_accessor :_name
  attr_accessor :_sex

  def initialize(n, s)
    @_name = n
    @_sex = s
  end
end

class StudentList
  include Enumerable

  def initialize
    @students = []
  end

  def << (student)
    @students << student
  end

  def each
    @students.each do |student|
      yield student
    end
  end
end

student1 = Student.new("seit","man")
student2 = Student.new('seit2','man')
student3 = Student.new('seit3','man')

students = StudentList.new
students << student1
students << student2
students << student3

students.each do |student|
  puts student._name
end

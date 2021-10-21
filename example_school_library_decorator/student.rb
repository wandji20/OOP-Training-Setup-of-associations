require_relative './classroom'
require_relative './person'
require_relative './rental'
require_relative './teacher'
require_relative './book'
require 'date'

class Student < Person
  attr_accessor :classroom

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

end

a = Classroom.new('Form1')
b = Student.new(19, a, 'name')
c = Student.new(21, a, 'name2')
t = Teacher.new(21, 'Mathematics', 'Wandji')
book = Book.new('Necmi', 'Loving Ruby')
a.add_student(b)
a.add_student(c)
a.students
b.classroom

# pp a.students
pp t.rentals

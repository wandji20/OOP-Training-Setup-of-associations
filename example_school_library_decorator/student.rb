require_relative './classroom'
require_relative './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

a = Classroom.new('Form1')
b = Student.new(19, a, 'name')
c = Student.new(21, a, 'name2')
a.add_student(b)
a.add_student(c)
# pp a.students
pp b.classroom


require './student'
class Classroom
  attr_accessor :label
  def initializer(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
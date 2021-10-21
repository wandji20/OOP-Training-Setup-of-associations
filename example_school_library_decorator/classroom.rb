class Classroom
  attr_accessor :label, :students
  attr_reader :id
  def initialize(label)
    @id = Random.rand(1..1000)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
  end
end

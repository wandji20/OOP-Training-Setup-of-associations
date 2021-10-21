require_relative './classroom'
require_relative './person'
require_relative './rental'
require_relative './teacher'
require_relative './book'
require 'date'

class Student < Person
  attr_accessor :classroom

  # rubocop:disable Style/OptionalBooleanParameter
  def initialize(age, _classroom, name = 'Unknown', parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name, parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  # rubocop:disable Lint/DuplicateMethods
  def classroom(classroom)
    @classroom = classroom
    # rubocop:enable Lint/DuplicateMethods
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

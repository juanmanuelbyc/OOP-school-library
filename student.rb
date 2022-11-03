require './person'

# Student class inherits from Person class
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permision: true)
    super(age, name, parent_permision)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def set_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

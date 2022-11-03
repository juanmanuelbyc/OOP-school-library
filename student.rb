require './person'

# Student class inherits from Person class
class Student < Person
  attr_reader :classroom

  def initialize(age, parent_permision, name = 'Unknown')
    super(age, parent_permision, name)
    @classroom = nil
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

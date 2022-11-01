require "./person.rb"

class Student < Person
  def initialize(age, name = "Unknown", parent_permision = true, classroom)
    super(age, name, parent_permision)
    @classroom = classroom
  end

  def play_hooky 
    "¯\(ツ)/¯"
  end
end

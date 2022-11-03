# frozen_string_literal: true

require './person'

# Teacher class inherits from Person class
class Teacher < Person
  def initialize(age, specialization, name = 'Unknown')
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end

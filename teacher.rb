require "./person.rb"

class Teacher < Person
  def initialize(age, name = "Unknown", specialization)
    super(age, name, true)
    @specialization = specialization
  end

  def can_use_services? 
    true
  end
end

require './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permision: true)
    super name
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permision = parent_permision
  end

  attr_accessor :age, :name
  attr_reader :id

  def can_use_services?
    of_age? || @parent_permision ? true : false
  end

  private

  def of_age?
    age >= 18
  end
end

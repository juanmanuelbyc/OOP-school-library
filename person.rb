# frozen_string_literal: true

require './nameable'
require './decorators'

# Person Class inherits from Nameable
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permision: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permision = parent_permision
    @rentals = []
  end

  attr_accessor :age, :name
  attr_reader :id

  def can_use_services?
    of_age? || @parent_permision ? true : false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    age >= 18
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

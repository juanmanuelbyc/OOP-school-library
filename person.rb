require './nameable'
require './decorators'

# Person Class inherits from Nameable
class Person < Nameable
  def initialize(age, parent_permision, name = 'Unknown')
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permision = parent_permision
    @rentals = []
  end

  attr_accessor :age, :name, :rentals
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

  def add_rental(book, date)
    @rentals.push(Rental.new(self, book, date))
    book.rentals.push(Rental.new(self, book, date))
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

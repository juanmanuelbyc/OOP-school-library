# frozen_string_literal: true

# Student class inherits from Person class
class Rental
  attr_accessor :date

  def initialize(person, book, date)
    @person = person
    @book = book
    book.rentals << self
    @date = date
    person.rentals << self
  end
end

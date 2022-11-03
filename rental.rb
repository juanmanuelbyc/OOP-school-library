# Student class inherits from Person class
class Rental
  attr_accessor :date, :person, :book

  def initialize(person, book, date)
    @person = person
    @book = book
    @date = date
  end
end

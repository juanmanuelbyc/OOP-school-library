# Student class inherits from Person class
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    @rentals.push(Rental.new(person, self, date))
    person.rentals.push(Rental.new(person, self, date))
  end

end

require './nameable'

# BaseDecorator inherits from Nameable
class BaseDecorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end

# Capitalize decorator inherits from BaseDecorator
class Capitalize < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

# Trimmer decorator inherits from BaseDecorator
class Trimmer < BaseDecorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end

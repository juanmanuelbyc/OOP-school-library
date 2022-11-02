# frozen_string_literal: true

class Nameable
  def initialize(name)
    @name = name
  end

  def correct_name
    raise NotImplementedError, 'Please implement the correct_name method'
  end
end

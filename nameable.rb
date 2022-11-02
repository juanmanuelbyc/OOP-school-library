# frozen_string_literal: true

# Any instance that can be nameable
class Nameable
  def correct_name
    raise NotImplementedError, 'correct_name method not implemented'
  end
end

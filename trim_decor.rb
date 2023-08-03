require './base_decor'

class TrimmerDecorator < Decorator
  def correct_name
    name_trim = @nameable.correct_name
    name_trim.length > 10 ? name_trim[0..9] : name_trim
  end
end

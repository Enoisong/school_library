class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not Implemented method '#{__method__}'"
  end
end

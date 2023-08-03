class Corrector
  def correct_name(name)
    name = if name.length > 10
      name.capitalize.strip
    else
      name.capitalize
    end
    name[0..10] 
  end
end

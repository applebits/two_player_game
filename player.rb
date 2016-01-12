
class InvalidName < StandardError
end

class Player
  
  attr_accessor :lives, :name
  def initialize(name)
    raise InvalidName, "Name is #{name}, must be A-z format eg. 'Bob'" if name == ""
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end





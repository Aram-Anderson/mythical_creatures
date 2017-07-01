class Unicorn
  attr_reader :name, :color

  def initialize(name, color = 'white')
    @name = name
    @color = color
  end

  def white?
    @color == 'white'? true : false
  end

  def say(phrase)
    return "**;* " + phrase + " **;*"
  end
end

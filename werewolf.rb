class Werewolf
  attr_reader :name, :location
  attr_accessor :human, :werewolf

  def initialize(name, location="France")
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @count = 0
    @hungry = false
    @student = true
  end

  def human?
    human
  end

  def wolf?
    werewolf
  end

  def change!
    @count += 1
    if @count.even?
      @human = true
      @werewolf = false
    else
      @human = false
      @werewolf = true
      @hungry = true
    end
  end

  def hungry?
    @hungry
  end
end

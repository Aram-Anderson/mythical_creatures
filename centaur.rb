require 'pry'
class Centaur

  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @tired_counter = 0
    @laying = false
  end

  def shoot
    @tired_counter += 1
    if @tired_counter > 2
      @cranky = true
      p "NO!"
    elsif @laying == true
      p "NO!"
    else
      p "Twang!!!"
    end
  end

  def run
    @tired_counter += 1
    if @tired_counter > 2
      @cranky = true
      p "NO!"
    elsif @laying == true
      p "NO!"
    else
      p "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true && @tired_counter == 0
      p "BARRRFFFFF!!!"
    elsif @standing == true && @tired_counter > 0
      @tired_counter = 0
      @cranky = false
    else
      p "NO!"
    end
  end

  def sleep
    if @standing
      return "NO!"
    end
    @tired_counter = 0
    @cranky = false
  end

end

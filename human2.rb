require_relative 'ogre2'

class Human

  attr_accessor :name, :encounter_counter, :notices_ogre, :knocked_out

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notices_ogre
  end

  def notices_ogre?
    if self.encounter_counter % 3 == 0
      @notices_ogre = true
    end
  end

  def knocked_out?
    @knocked_out
  end

end

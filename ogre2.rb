require_relative 'human2.rb'

class Ogre

  attr_accessor :name, :home, :encounter_counter, :swings

  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    self.encounter_counter += 1
    human.encounter_counter += 1
    if self.encounter_counter % 3 == 0
      swing_at(human)
    end
  end

  def swing_at(human)
      @swings += 1
      if @swings == 2
        human.knocked_out = true
      end
  end

  def apologize(human)
    human.knocked_out = false
  end

end

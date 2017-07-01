class Wizard
  attr_reader :name, :bearded

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(stuff)
    return "sudo " + stuff
  end

  def rested?
    @rested
  end

  def cast
    @spells_cast += 1
    @spells_cast > 2 ? @rested = false : @rested = true
    return "MAGIC MISSILE!"
  end

end

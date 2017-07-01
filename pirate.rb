class Pirate
  attr_reader :name, :job

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @commit_heinous_act = 0
    @rob_ship = true
    @booty = 0
  end

  def cursed?
    @commit_heinous_act > 2? @cursed = true : @cursed = false
  end

  def commit_heinous_act
    @commit_heinous_act += 1
  end

  def rob_ship
    @booty += 100
  end

  def booty?
    @booty
  end

end

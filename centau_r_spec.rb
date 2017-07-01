gem 'rspec'
require_relative 'centaur'

describe Centaur do

  it "has a name" do
    centaur = Centaur.new("Paul", "Horsish")
    expect(centaur.name).to eq "Paul"
  end

  it "has a breed" do
    centaur = Centaur.new("Paul", "Horsish")
    expect(centaur.breed).to eq "Horsish"
  end

  it "has great bow skills" do
    centaur = Centaur.new("Paul", "Horsish")
    expect(centaur.shoot).to eq "Twang!!!"
  end

  it "makes a horse sound when it runs" do
    centaur = Centaur.new("Paul", "Horsish")
    expect(centaur.run).to eq "Clop clop clop clop!!!"
  end

  it "is not cranky when first created" do
    centaur = Centaur.new("Paul", "Horsish")
    expect(centaur.cranky?).to be false
  end

  it "is standing when first created" do
    centaur = Centaur.new("A", "B")
    expect(centaur.standing?).to eq true
  end

  it "gets cranky after running and/or shooting a bow three times" do
    centaur = Centaur.new("A", "B")
    expect(centaur.cranky?).to be false
    centaur.shoot
    centaur.run
    centaur.shoot
    expect(centaur.cranky?).to eq true
  end

  it "will not shoot a bow if it's cranky" do
    centaur = Centaur.new("A", "B")
    3.times { centaur.shoot }
    expect(centaur.shoot).to eq "NO!"
  end

  it "will not run if it's cranky" do
    centaur = Centaur.new("A", "B")
    3.times {centaur.shoot}
    expect(centaur.run).to eq "NO!"
  end

  it "will not sleep if it's standing" do
    centaur = Centaur.new("A", "B")
    expect(centaur.sleep).to eq "NO!"
  end

  it "is not standing after laying down" do
    centaur = Centaur.new("A", "B")
    expect(centaur.standing?).to eq true
    centaur.lay_down
    expect(centaur.laying?).to eq true
    expect(centaur.standing?).to eq false
  end

  it "will sleep when laying down" do
    centaur = Centaur.new("A", "B")
    expect(centaur.sleep).to eq "NO!"
    centaur.lay_down
    expect(centaur.sleep).to_not eq "NO!"
  end

  it "will not shoot a bow if laying down" do
    centaur = Centaur.new("A", "B")
    centaur.lay_down
    expect(centaur.shoot).to eq "NO!"
  end

  it "will not run if laying down" do
    centaur = Centaur.new("A", "B")
    centaur.lay_down
    expect(centaur.run).to eq "NO!"
  end

  it "can stand up" do
    centaur = Centaur.new("A", "B")
    centaur.lay_down
    expect(centaur.laying?).to eq true
    centaur.stand_up
    expect(centaur.standing?).to eq true
  end

  it "is not cranky after sleeping" do
    centaur = Centaur.new("A", "B")
    expect(centaur.cranky?).to eq false
    3.times { centaur.shoot }
    expect(centaur.cranky?).to eq true
    centaur.lay_down
    centaur.sleep
    expect(centaur.cranky?).to eq false
  end

  it "is rested after drinking a potion" do
    centaur = Centaur.new("Phil", "Horsish")
    expect(centaur.cranky?).to eq false
    3.times { centaur.shoot }
    expect(centaur.cranky?).to eq true
    centaur.drink_potion
    expect(centaur.cranky?).to eq false
  end

  it "can only drink a potion while standing" do
    centaur = Centaur.new("Phil", "Istanbul")
    centaur.lay_down
    expect(centaur.drink_potion).to eq "NO!"
  end

  it "gets sick if it drinks a potion while rested" do
    centaur = Centaur.new("Phil", "Istanbul")
    expect(centaur.drink_potion).to eq "BARRRFFFFF!!!"
  end
end

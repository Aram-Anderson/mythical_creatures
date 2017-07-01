gem 'rspec'
require_relative 'ogre'

describe Ogre do

  it "has a name" do
    ogre = Ogre.new('Brak')
    expect(ogre.name).to eq 'Brak'
  end

  it "lives somewhere by default" do
    ogre = Ogre.new('Brak')
    expect(ogre.home).to eq "Swamp"
  end

  it "doesn't have to live in the swamp" do
    ogre = Ogre.new('Brak', 'The Ritz')
    expect(ogre.home).to eq "The Ritz"
  end

  it "can meet a human" do
    ogre = Ogre.new('Brak')
    human = Human.new
    expect(human.name).to eq "Jane"
    ogre.encounter(human)
    expect(human.encounter_counter).to eq 1
  end

  it "human only notices ogre every 3rd encounter" do
    ogre = Ogre.new('Brak')
    human = Human.new
    2.times { ogre.encounter(human) }
    expect(human.notices_ogre?).to eq false
    ogre.encounter(human)
    expect(human.notices_ogre?).to eq true
  end
end

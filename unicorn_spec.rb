gem 'rspec'
require_relative 'unicorn.rb'

describe Unicorn do

  it "has a name" do
    unicorn = Unicorn.new("Bill")

    expect(unicorn.name.empty?).to eq false
  end

  it "is white by default" do
    unicorn = Unicorn.new("Alice")

    expect(unicorn.color).to eq "white"
  end

  it "does not have to be white" do
    unicorn = Unicorn.new("Sammy", "Purple")

    expect(unicorn.color).to eq "Purple"
  end

  it "says sparkly stuff" do
    unicorn = Unicorn.new("Sparkles")
    expect(unicorn.say("Howdy")).to eq "**;* Howdy **;*"
  end
end

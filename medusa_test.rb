gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'medusa.rb'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    assert_equal false, victim.stoned
    medusa.stare(victim)
    assert_equal true, victim.stoned
  end

  def test_can_only_have_three_victims
    # skip
    # your code here
    medusa = Medusa.new("Patty")
    victim1 = Person.new("Phil")
    victim2 = Person.new("Frank")
    victim3 = Person.new("Carl")
    victim4 = Person.new("Jim")
    victim5 = Person.new("Steve")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    medusa.stare(victim5)
    assert_equal 3, medusa.statues.count
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    # your code here
    medusa = Medusa.new("Patty")
    victim1 = Person.new("Phil")
    victim2 = Person.new("Frank")
    victim3 = Person.new("Carl")
    victim4 = Person.new("Jim")

    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    medusa.stare(victim4)
    assert_equal true, victim4.stoned
    assert_equal false, victim1.stoned
    # binding.pry
  end

end

#!/usr/bin/env ruby

# Problem:
# in a shop there are k kinds of postcards.
# we want to send postcards to n friends.
# how many different ways can this be done?
# Modifcation 1:
# what happens if we want to send them different cards?
# Modification 2:
# what happens if we want to send two different cards to each of them (but different persons may get the same card?)

class FriendsAndPostcards

  def initialize attributes
    @friends = attributes[:friends].to_i
    @postcards = attributes[:postcards].to_i
    output
  end

  def with_repetition
    comb(@friends, @postcards)
  end

  def without_repetition
    min, max = [@friends, @postcards].minmax
    fact(max) / (fact(max - min))
  end

  def two_cards
    @postcards = 2
    with_repetition
  end

  def fact int
    (1..int).reduce(:*) || 1
  end

  def comb val1, val2
    val1**val2
  end

  def output
    puts "###################################"
    puts "with repetition: #{with_repetition}"
    puts "without repetition: #{without_repetition}"
    puts "when we have two cards: #{two_cards}"
    puts "###################################"
  end
end

FriendsAndPostcards.new({friends: ARGV[0], postcards: ARGV[1]})

#! usr/bin/env ruby
#
# we have k distinct postcards for friends
# and we want to send them to all of our n friends
# a friend can get any number of postcards, including 0
# how can this be done?
# what happens if we send at least 1 post card to each friend?

class FriendsAndDistinctPostcards
  def initialize attributes
    @friends = attributes[:friends]
    @postcards = attributes[:postcards]
    output
  end

  def any_number_of_cards
    min, max = [@friends, @postcards].minmax
    
  end

  def at_least_one
  end

  def output
    puts @friends
    puts @postcards
  end
end


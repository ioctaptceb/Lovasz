# Problem:
# in a shop there are k kinds of postcards.
# we want to send postcards to n friends.
# how many different ways can this be done?
# Modifcation 1:
# what happens if we want to send them different cards?
# Modification 2:
# what happens if we want to send two different cards to each of them (but different persons may get the same card?)

class CombineFriendsPostcards
  
  def initialize attributes
    @friends = attributes[:friends]
    @postcards = attributes[:postcards]
  end

  def with_repetition
    @friends.comb @postcards
  end

  def without_repetition
    array = [@friends, @postcards]
    max = array.max
    min = array.min
    max.fact / ((max - min).fact)*(min.fact)
  end

  def two_cards
    @postcards = 2
    self.with_repetition
  end

  private
  def self.fact
    (1..self).reduce(:*) || 1
  end

  def self.comb exp 
    self**exp
  end
end



# Problem:
# in a shop there are k kinds of postcards.
# we want to send postcards to n friends.
# how many different ways can this be done?
# Modifcation 1:
# what happens if we want to send them different cards?
# Modification 2:
# what happens if we want to send two different cards to each of them (but different persons may get the same card?)

class CombineFriendsPostcards
  attr_reader @friends, @postcards

  def with_repetition
    @friends.comb @postcards
  end

  def without_repetition
    if @friends >= @postcards
      @friends.fact / (@friends - @postcards).fact*(@postcards.fact)
    else
      @postcards.fact / (@postcards - @friends).fact*(@friends.fact)
    end
  end

  def two_cards
    @postcards = 2
    self.with_repetition
  end

  private
  def fact
    (1..self).reduce(:*) || 1
  end

  def comb exp 
    self**exp
  end
end



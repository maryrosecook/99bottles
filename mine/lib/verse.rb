require_relative "./bottle_count"
require_relative "./drink"
require_relative "./go_to_the_store"

class Verse
  def initialize(bottle_count)
    self.bottle_count = bottle_count
  end

  def to_s
    "#{first_line}#{second_line}"
  end

  private

  attr_accessor :bottle_count

  def first_line
    bottle_count_human = BottleCount.new(bottle_count).to_s

    "#{bottle_count_human.capitalize} of beer on the wall, " +
      "#{bottle_count_human} of beer.\n"
  end

  def second_line
    bottle_count > 0 ?
      Drink.new(bottle_count).to_s :
      GoToTheStore.new.to_s
  end
end

# BottleCount,
# FirstLine, SecondLine

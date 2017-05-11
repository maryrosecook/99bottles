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
    <<-LINE
#{BottleCount.new(bottle_count).to_s.capitalize} of beer on the wall, #{BottleCount.new(bottle_count).to_s} of beer.
LINE
  end

  def second_line
    bottle_count > 0 ?
      Drink.new(bottle_count).to_s :
      GoToTheStore.new.to_s
  end
end

# BottleCount,
# FirstLine, SecondLine

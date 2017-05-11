require_relative "./bottle_count"

class Drink
  def initialize(bottle_count)
    self.bottle_count = bottle_count
  end

  def to_s
    "Take #{bottle_to_drink} down and pass it around, #{BottleCount.new(bottle_count - 1).to_s} of beer on the wall.\n"
  end

  private

  def bottle_to_drink
    bottle_count == 1 ? "it" : "one"
  end

  attr_accessor :bottle_count
end

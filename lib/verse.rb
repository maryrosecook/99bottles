class Verse
  # TODO: make private
  attr_accessor :bottle_count

  def initialize(bottle_count)
    self.bottle_count = bottle_count
  end

  # TODO: make private later
  def first_line
    <<-LINE
#{bottles_on_the_wall(bottle_count)} of beer on the wall, #{bottles_on_the_wall(bottle_count)} of beer.
LINE
  end

  def second_line
    <<-LINE
Take #{bottle_to_drink} down and pass it around, #{bottles_on_the_wall(bottle_count - 1)} of beer on the wall.
LINE
  end

  def to_s
    "#{first_line}#{second_line}"
  end

  def bottle_to_drink
    bottle_count == 1 ? "it" : "one"
  end

  # TODO: paramaterised, rather than using object state
  # but will be able to fix this when I abstract it to
  # its own class
  def bottles_on_the_wall(count)
    bottle_count_human = count > 0 ? count : "no more"

    "#{bottle_count_human} #{"bottle".pluralize(count)}"
  end
end

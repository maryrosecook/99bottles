require 'active_support/inflector'

class Bottles
  def verse(bottle_count)
    "#{first_line(bottle_count)}#{second_line(bottle_count)}"
  end

  private

  def first_line(bottle_count)
    <<-LINE
#{bottles_on_the_wall(bottle_count)} of beer on the wall, #{bottles_on_the_wall(bottle_count)} of beer.
LINE
  end

  def second_line(bottle_count)
    post_drink_bottle_count = bottle_count - 1
    <<-LINE
Take #{bottle_to_drink(bottle_count)} down and pass it around, #{bottles_on_the_wall(post_drink_bottle_count)} of beer on the wall.
LINE
  end

  def bottles_on_the_wall(count)
    bottle_count = count > 0 ? count : "no more"

    "#{bottle_count} #{"bottle".pluralize(count)}"
  end

  def bottle_to_drink(count)
    count == 1 ? "it" : "one"
  end
end

# first_line - horrid
# second_line - horrid
# way too much logic in bottles
# should I continue until I have all the logic and can pick the right abstraction, or should the code easier to reason about now by picking an abstraction?

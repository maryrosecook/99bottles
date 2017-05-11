require 'active_support/inflector'

class Bottles

  def verse(bottle_count)
    post_drink_bottle_count = bottle_count - 1

    <<-VERSE
#{first_line(bottle_count)}Take #{bottle_to_drink_description(bottle_count)} down and pass it around, #{bottle_count_s(post_drink_bottle_count)} of beer on the wall.
VERSE
  end

  private

  def first_line(bottle_count)
    <<-LINE
#{bottle_count_s(bottle_count)} of beer on the wall, #{bottle_count_s(bottle_count)} of beer.
LINE
  end

  def bottle_count_s(count)
    bottle_count = count > 0 ? count : "no more"

    "#{bottle_count} #{"bottle".pluralize(count)}"
  end

  def bottle_to_drink_description(count)
    count == 1 ? "it" : "one"
  end
end

require 'active_support/inflector'
require_relative "./verse"

class Bottles
  def song
    verses(99, 0)
  end

  def verse(bottle_count)
    Verse.new(bottle_count).to_s
  end

  def verses(start, finish)
    start.downto(finish).map do |bottle_count|
      verse(bottle_count)
    end.join("\n")
  end
end

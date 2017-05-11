require 'active_support/inflector'
require_relative "./verse"

class Bottles
  def verse(bottle_count)
    Verse.new(bottle_count).to_s
  end
end

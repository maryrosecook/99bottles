class BottleCount
  def initialize(count)
    self.count = count
  end

  def to_s
    bottle_count_human = count > 0 ? count : "no more"

    "#{bottle_count_human} #{"bottle".pluralize(count)}"
  end

  private

  attr_accessor :count
end

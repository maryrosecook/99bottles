class Bottles
  def verse(number)
    bottle_number = BottleNumber.create(number)
    next_bottle_number = bottle_number.successor

    "#{bottle_number}".capitalize + " of beer on the wall, " +
      "#{bottle_number} of beer.\n" +
      "#{bottle_number.action}, " +
      "#{next_bottle_number} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end

class BottleNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def self.create(number)
    if number == 0
      BottleNumber0
    elsif number == 1
      BottleNumber1
    elsif number == 6
      BottleNumber6
    else
      BottleNumber
    end.new(number)
  end

  def successor
    BottleNumber.create(number - 1)
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def container
    "bottles"
  end

  def quantity
    number.to_s
  end

  def pronoun
    "one"
  end

  def to_s
    "#{quantity} #{container}"
  end
end

class BottleNumber0 < BottleNumber
  def successor
    BottleNumber.create(99)
  end

  def action
    "Go to the store and buy some more"
  end

  def quantity
    "no more"
  end
end

class BottleNumber1 < BottleNumber
  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end

class BottleNumber6 < BottleNumber
  def container
    "six-pack"
  end

  def quantity
    1
  end
end

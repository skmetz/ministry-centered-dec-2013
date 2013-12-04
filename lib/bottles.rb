class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|n| verse(n)}.join("\n") + "\n"
  end

  def verse(number)
    BeerVerse.new(number).to_s
  end
end

class BeerVerse
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_s
    "#{starting_count.to_s.capitalize} #{starting_container} of beer on the wall, " +
    "#{starting_count} #{starting_container} of beer.\n" +
    "#{action}, " +
    "#{ending_count} #{ending_container} of beer on the wall.\n"
  end

  private

  def starting_count
    if number == 0
      'no more'
    else
      number
    end
  end

  def starting_container
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def action
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def pronoun
    if number == 1
      'it'
    else
      'one'
    end
  end

  def ending_count
    case number
    when 0
      99
    when 1
      'no more'
    else
      number - 1
    end
  end

  def ending_container
    if number == 2
      'bottle'
    else
      'bottles'
    end
  end
end

class BottlesSong
  def sing
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|n| verse(n)}.join("\n") + "\n"
  end

  def verse(number)
    "#{count(number).to_s.capitalize} #{container(number)} of #{liquid} #{location}, " +
    "#{count(number)} #{container(number)} of #{liquid}.\n" +
    "#{action(number)}, " +
    "#{count(number-1)} #{container(number-1)} of #{liquid} #{location}.\n"
  end

  private
  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def count(number)
    case number
    when -1
      99
    when 0
      'no more'
    else
      number
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def pronoun(number)
    if number == 1
      'it'
    else
      'one'
    end
  end


  def liquid
    'beer'
  end

  def location
    'on the wall'
  end

end

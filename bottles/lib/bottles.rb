class Bottles
  def verse(number)
    "#{wall_lines(number)} of beer on the wall, " +
      "#{bottles(number)} of beer.\n" +
      action_lines(number) +
      "#{bottles(next_bottle_count(number))} of beer on the wall.\n"
  end

  def verses(starting, ending)
    starting.downto(ending).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def wall_lines(number)
    case number
    when 0 then return "No more bottles"
    when 1 then return "1 bottle"
    else return "#{number} bottles"
    end
  end

  def action_lines(number)
    case number
    when 0 then return "Go to the store and buy some more, "
    else return "Take #{take_down(number)} down and pass it around, "
    end
  end

  def take_down(number)
    case number
    when 1 then return "it"
    else return "one"
    end
  end

  def bottles(number)
    case number
    when 0 then return "no more bottles"
    when 1 then return "1 bottle"
    else return "#{number} bottles"
    end
  end

  def next_bottle_count(number)
    number.zero? ? 99 : number - 1
  end
end
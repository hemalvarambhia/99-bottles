class BottleVerse
  def verse(number)
    "#{quantity_and_bottles(number)} of beer on the wall, #{quantity_and_bottles(number).downcase} of beer.\n" +
      "#{action(number)}, #{quantity_and_bottles(number_successive_to(number))} of beer on the wall.\n"
  end

  private

  def number_successive_to(number)
    case number
    when 0
      99
    else
      number - 1
    end
  end

  def quantity_and_bottles(number)
    case number
    when 0
      "No more bottles"
    when 1
      "#{number} bottle"
    else
      "#{number} bottles"
    end
  end

  def action(number)
    case number
    when 0
      "Go to the store and by some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end
end

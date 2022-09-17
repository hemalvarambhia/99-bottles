class BottleSong
  def verse(number)
    "#{quantity(number)} of beer on the wall, #{quantity(number).downcase} of beer. #{action(number)}, #{next_number(number)} of beer on the wall."
  end

  def next_number(number)
    case number
    when 0
      "99 bottles"
    when 1
      "no more bottles"
    when 2
      "#{number - 1} bottle"
    else
      "#{number - 1} bottles"
    end
  end

  def quantity(number)
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
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    case number
    when 1
      "it"
    else
      "one"
    end
  end
end

class BottleSong
  def verse(number)
    "#{quantity_and_container(number)} of beer on the wall, #{quantity_and_container(number).downcase} of beer.\n#{action(number)}, #{next_number_and_container(number)} of beer on the wall."
  end

  def next_number_and_container(number)
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

  def quantity_and_container(number)
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

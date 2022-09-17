class BottleSong
  def verse(number)
    "#{quantity(number)} #{container(number)} of beer on the wall, #{quantity(number).downcase} #{container(number)} of beer.\n#{action(number)}, #{next_number_and_container(number)} of beer on the wall."
  end

  def next_number_and_container(number)
    case number
    when 0
      "99 #{container(number)}"
    when 1
      "no more #{container(number - 1)}"
    when 2
      "#{number - 1} #{container(number - 1)}"
    else
      "#{number - 1} #{container(number - 1)}"
    end
  end

  def quantity(number)
    case number
    when 0
      "No more"
    else
      number.to_s
    end
  end

  def container(number)
    case number
    when 1
      "bottle"
    else
      "bottles"
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

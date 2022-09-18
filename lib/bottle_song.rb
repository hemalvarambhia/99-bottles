require_relative './bottle_number'
class BottleSong
  def verse(number)
    "#{quantity(number)} #{container(number)} of beer on the wall, #{quantity(number).downcase} #{container(number)} of beer.\n#{action(number)}, #{quantity(successive_to(number)).downcase} #{container(successive_to(number))} of beer on the wall."
  end

  private

  def quantity(number)
    BottleNumber.new(number).to_s
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

  def successive_to(number)
    BottleNumber.new(number).succ.to_i
  end
end

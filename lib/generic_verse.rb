class GenericVerse

  def initialize(number)
    @number = number
  end

  def verse(number)
    first_sentence(number) + second_sentence(number)
  end

  def first_sentence(number)
    "#{quantity_and_bottles(number)} of beer on the wall, #{quantity_and_bottles(number).downcase} of beer.\n"
  end

  def second_sentence(number)
    action(number) + ", #{left_over_bottles(number).downcase} of beer on the wall.\n"
  end

  def action(number)
    "Take #{pronoun(number)} down and pass it around"
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def left_over_bottles(number)
    if number == 0
      quantity_and_bottles(99)
    else
      quantity_and_bottles(number - 1)
    end
  end

  def quantity_and_bottles(number)
    if number == 0
      "No more #{bottles(number)}"
    else
      "#{number} #{bottles(number)}"
    end
  end

  def bottles(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end
end

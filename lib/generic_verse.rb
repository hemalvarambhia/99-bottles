class GenericVerse

  def initialize(number)
    @bottle_number = number
  end

  def verse(number)
    first_sentence(@bottle_number) + second_sentence(@bottle_number)
  end

  def first_sentence(number)
    "#{quantity_and_bottles(@bottle_number)} of beer on the wall, #{quantity_and_bottles(@bottle_number).downcase} of beer.\n"
  end

  def second_sentence(number)
    action(@bottle_number) + ", #{left_over_bottles(@bottle_number).downcase} of beer on the wall.\n"
  end

  def action(number)
    "Take #{pronoun(@bottle_number)} down and pass it around"
  end

  def pronoun(number)
    if @bottle_number == 1
      "it"
    else
      "one"
    end
  end

  def left_over_bottles(number)
    if @bottle_number == 0
      quantity_and_bottles(99)
    else
      quantity_and_bottles(@bottle_number - 1)
    end
  end

  def quantity_and_bottles(number)
    if @bottle_number == 0
      "No more #{bottles(@bottle_number)}"
    else
      "#{@bottle_number} #{bottles(@bottle_number)}"
    end
  end

  def bottles(number)
    if @bottle_number == 1
      "bottle"
    else
      "bottles"
    end
  end
end

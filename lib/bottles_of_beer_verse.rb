class BottlesOfBeerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to
    case number
    when 0
      BottlesOfBeerVerse.new(99)
    else
      BottlesOfBeerVerse.new(number - 1)
    end
  end

  def quantity_and_bottles
    "#{quantity} #{container}"
  end

  def quantity
    case number
    when 0
      "No more"
    else
      number.to_s
    end
  end

  def container
    case number
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    case number
    when 0
      "Go to the store and by some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def to_i
    number
  end

  private

  attr_reader :number
end

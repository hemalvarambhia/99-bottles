class BottlesOfBeerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to(number)
    case self.number
    when 0
      99
    else
      self.number - 1
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

  private

  attr_reader :number
end

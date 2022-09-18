class BottleNumber
  def initialize(number)
    @number = number
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
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def pronoun
    case number
    when 1
      "it"
    else
      "one"
    end
  end

  def succ
    case number
    when 0
      BottleNumber.new(99)
    else
      BottleNumber.new(number - 1)
    end
  end

  def to_i
    number
  end

  def quantity
    case number
    when 0
      "No more"
    else
      number.to_s
    end
  end

  private

  attr_reader :number
end

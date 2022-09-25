class ContainerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to
    case number
    when 0
      ContainerVerse.new(99)
    else
      ContainerVerse.new(number - 1)
    end
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

  def to_i
    number
  end

  private

  attr_reader :number
end

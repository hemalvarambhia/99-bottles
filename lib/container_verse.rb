class ContainerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to
    case number
    when 0
      ContainerVerse0.new(number).number_successive_to
    else
      ContainerVerse.new(number - 1)
    end
  end

  def quantity
    case number
    when 0
      ContainerVerse0.new(number).quantity
    else
      number.to_s
    end
  end

  def container
    case number
    when 0
      ContainerVerse0.new(number).container
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def action
    case number
    when 0
      ContainerVerse0.new(0).action
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

class ContainerVerse0 < ContainerVerse
  def quantity
    "No more"
  end

  def container
    "bottles"
  end

  def action
    "Go to the store and by some more"
  end

  def number_successive_to
    ContainerVerse.new(99)
  end
end

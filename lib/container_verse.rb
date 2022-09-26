class ContainerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to
    case number
    when 0
      ContainerVerse0.new(number).number_successive_to
    when 1
      ContainerVerse1.new(number).number_successive_to
    else
      ContainerVerse.new(number - 1)
    end
  end

  def quantity
    case number
    when 0
      ContainerVerse0.new(number).quantity
    when 1
      ContainerVerse1.new(number).quantity
    else
      number.to_s
    end
  end

  def container
    case number
    when 0
      ContainerVerse0.new(number).container
    when 1
      ContainerVerse1.new(number).container
    else
      "bottles"
    end
  end

  def action
    case number
    when 0
      ContainerVerse0.new(number).action
    when 1
      ContainerVerse1.new(number).action
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    "one"
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

class ContainerVerse1 < ContainerVerse
  def quantity
    number.to_s
  end

  def container
    "bottle"
  end

  def action
    "Take #{pronoun(number)} down and pass it around"
  end

  def pronoun(number)
    "it"
  end

  def number_successive_to
    ContainerVerse0.new(0)
  end
end

class ContainerVerse2 < ContainerVerse
  def number_successive_to
    ContainerVerse1.new(1)
  end
end

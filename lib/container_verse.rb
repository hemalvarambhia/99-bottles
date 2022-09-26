class ContainerVerse
  def initialize(number)
    @number = number
  end

  def number_successive_to
    ContainerVerse.new(number - 1)
  end

  def quantity
    number.to_s
  end

  def container
    "bottles"
  end

  def action
    "Take #{pronoun(number)} down and pass it around"
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
  def container
    "bottle"
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

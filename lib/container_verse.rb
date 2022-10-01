class ContainerVerse
  def self.for(number)
    {
      0 => ContainerVerse0.new(number),
      1 => ContainerVerse1.new(number),
      2 => ContainerVerse2.new(number)
    }.fetch(number, ContainerVerse.new(number))
  end

  def initialize(number)
    @number = number
  end

  def number_successive_to
    ContainerVerse.for(number - 1)
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
    ContainerVerse.for(99)
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
    ContainerVerse.for(0)
  end
end

class ContainerVerse2 < ContainerVerse

end

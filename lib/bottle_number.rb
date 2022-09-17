class BottleNumber
  def initialize(number)
    @number = number
  end

  def successive_to(number)
    case number
    when 0
      99
    when 1
      0
    else
      number - 1
    end
  end
end

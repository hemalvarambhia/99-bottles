class BottleNumber
  def initialize(number)
    @number = number
  end

  def succ
    case @number
    when 0
      BottleNumber.new(99)
    when 1
      BottleNumber.new(0)
    else
      BottleNumber.new(@number - 1)
    end
  end

  def to_i
    @number
  end
end

class BottleNumber
  def initialize(number)
    @number = number
  end

  def succ
    case @number
    when 0
      BottleNumber.new(99)
    else
      BottleNumber.new(@number - 1)
    end
  end

  def to_i
    @number
  end

  def to_s
    case @number
    when 0
      "No more"
    else
      @number.to_s
    end
  end
end

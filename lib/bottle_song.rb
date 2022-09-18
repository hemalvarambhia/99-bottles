require_relative './bottle_number'
class BottleSong
  def verse(number)
    current_bottle_number = BottleNumber.new(number)
    "#{quantity(current_bottle_number)} #{container(current_bottle_number)} of beer on the wall, #{quantity(current_bottle_number).downcase} #{container(current_bottle_number)} of beer.\n#{action(current_bottle_number)}, #{quantity(number_after(current_bottle_number)).downcase} #{container(number_after(current_bottle_number))} of beer on the wall."
  end

  private

  def quantity(number)
    number.to_s
  end

  def container(number)
    number.container
  end

  def action(number)
    number.action
  end

  def number_after(number)
    if number.is_a?(BottleNumber)
      number.succ
    else
      BottleNumber.new(number).succ
    end
  end
end

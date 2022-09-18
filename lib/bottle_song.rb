require_relative './bottle_number'
class BottleSong
  def verse(number)
    current_bottle_number = BottleNumber.new(number)
    "#{current_bottle_number.to_s} #{current_bottle_number.container} of beer on the wall, #{current_bottle_number.to_s.downcase} #{current_bottle_number.container} of beer.\n#{action(current_bottle_number)}, #{number_after(current_bottle_number).to_s.downcase} #{number_after(current_bottle_number).container} of beer on the wall."
  end

  private

  def action(number)
    number.action
  end

  def number_after(number)
    number.succ
  end
end

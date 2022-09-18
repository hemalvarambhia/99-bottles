require_relative './bottle_number'
class BottleSong
  def verse(number)
    current_bottle_number = BottleNumber.new(number)
    "#{current_bottle_number.to_s} #{current_bottle_number.container} of beer on the wall, #{current_bottle_number.to_s.downcase} #{current_bottle_number.container} of beer.\n#{current_bottle_number.action}, #{current_bottle_number.succ.to_s.downcase} #{current_bottle_number.succ.container} of beer on the wall."
  end
end

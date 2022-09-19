require_relative './bottle_verse'
class BottleSong
  def song
    99.downto(0).map {|number| verse(number) }.join("\n")
  end

  def verse(number)
    current_bottle_number = BottleVerse.new(number)
    next_bottle_number = current_bottle_number.succ
    "#{current_bottle_number.quantity} #{current_bottle_number.container} of beer on the wall, #{current_bottle_number.quantity.downcase} #{current_bottle_number.container} of beer.\n#{current_bottle_number.action}, #{next_bottle_number.quantity.downcase} #{next_bottle_number.container} of beer on the wall."
  end
end

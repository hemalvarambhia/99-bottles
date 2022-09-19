require_relative './bottle_verse'
class BottleSong
  def song
    99.downto(0).map {|number| verse(number) }.join("\n")
  end

  def verse(number)
    current_verse = BottleVerse.new(number)
    next_verse = current_verse.succ
    "#{current_verse.quantity} #{current_verse.container} of beer on the wall, #{current_verse.quantity.downcase} #{current_verse.container} of beer.\n#{current_verse.action}, #{next_verse.quantity.downcase} #{next_verse.container} of beer on the wall."
  end
end

require_relative './bottles_of_beer_verse'
class BottlesOfBeerSong
  def verse(number)
    verse = BottlesOfBeerVerse.new(number)
    next_verse = verse.number_successive_to
    "#{quantity_and_bottles(verse)} of beer on the wall, #{quantity_and_bottles(verse).downcase} of beer.\n" +
      "#{action(verse)}, #{quantity_and_bottles(next_verse)} of beer on the wall.\n"
  end

  private

  def quantity_and_bottles(bottle_verse)
    "#{bottle_verse.quantity} #{bottle_verse.container}"
  end

  def action(bottle_verse)
    bottle_verse.action
  end
end

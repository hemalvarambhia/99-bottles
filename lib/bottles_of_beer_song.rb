require_relative './bottles_of_beer_verse'
class BottlesOfBeerSong
  def verse(number)
    verse = BottlesOfBeerVerse.new(number)
    "#{quantity_and_bottles(number, verse)} of beer on the wall, #{quantity_and_bottles(number, verse).downcase} of beer.\n" +
      "#{action(number, verse)}, #{quantity_and_bottles(number_successive_to(number, verse).to_i)} of beer on the wall.\n"
  end

  private

  def number_successive_to(number, bottle_verse = nil)
    bottle_verse.number_successive_to
  end

  def quantity_and_bottles(number, bottle_verse = nil)
    bottles_of_beer_verse_new = BottlesOfBeerVerse.new(number)
    "#{bottles_of_beer_verse_new.quantity} #{bottles_of_beer_verse_new.container}"
  end

  def action(number, bottle_verse = nil)
    BottlesOfBeerVerse.new(number).action
  end
end

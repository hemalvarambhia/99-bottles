require_relative './bottles_of_beer_verse'
class BottlesOfBeerSong
  def verse(number)
    "#{quantity_and_bottles(number)} of beer on the wall, #{quantity_and_bottles(number).downcase} of beer.\n" +
      "#{action(number)}, #{quantity_and_bottles(number_successive_to(number))} of beer on the wall.\n"
  end

  private

  def number_successive_to(number)
    BottlesOfBeerVerse.new(number).number_successive_to
  end

  def quantity_and_bottles(number)
    BottlesOfBeerVerse.new(number).quantity_and_bottles
  end

  def action(number)
    BottlesOfBeerVerse.new(number).action
  end
end

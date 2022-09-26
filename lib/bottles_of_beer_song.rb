require_relative './container_verse'
class BottlesOfBeerSong
  def verse(number)
    verse = verse_for(number)
    next_verse = verse.number_successive_to
    "#{quantity_and_bottles(verse)} of beer on the wall, #{quantity_and_bottles(verse).downcase} of beer.\n" +
      "#{action(verse)}, #{quantity_and_bottles(next_verse)} of beer on the wall.\n"
  end

  private

  def verse_for(number)
    {
      0 => ContainerVerse0.new(number),
      1 => ContainerVerse1.new(number),
      2 => ContainerVerse2.new(number)
    }.fetch(number, ContainerVerse.new(number))
  end

  def quantity_and_bottles(bottle_verse)
    "#{bottle_verse.quantity} #{bottle_verse.container}"
  end

  def action(bottle_verse)
    bottle_verse.action
  end
end

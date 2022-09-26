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
    case number
    when 0
      ContainerVerse0.new(number)
    when 1
      ContainerVerse1.new(number)
    when 2
      ContainerVerse2.new(number)
    else
      ContainerVerse.new(number)
    end
  end

  def quantity_and_bottles(bottle_verse)
    "#{bottle_verse.quantity} #{bottle_verse.container}"
  end

  def action(bottle_verse)
    bottle_verse.action
  end
end

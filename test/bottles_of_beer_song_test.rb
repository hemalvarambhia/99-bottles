require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    case number
    when 0
      first_sentence(number) +
        "Go to the store and buy some more, #{left_over_bottles(number).downcase} of beer on the wall.\n"
    when 1
      first_sentence(number) +
        "Take it down and pass it around, #{left_over_bottles(number).downcase} of beer on the wall.\n"
    else
      first_sentence(number) +
        "Take one down and pass it around, #{left_over_bottles(number).downcase} of beer on the wall.\n"
    end
  end

  def first_sentence(number)
    "#{quantity_and_bottles(number)} of beer on the wall, #{quantity_and_bottles(number).downcase} of beer.\n"
  end



  def left_over_bottles(number)
    if number == 0
      quantity_and_bottles(99)
    else
      quantity_and_bottles(number - 1)
    end
  end

  def quantity_and_bottles(number)
    if number == 0
      "No more bottles"
    elsif number == 2
      "2 bottles"
    elsif number == 1
      "1 bottle"
    else
      "#{number} bottles"
    end
  end

  def test_verse_1
    expected_verse =
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    expected_verse =
      "98 bottles of beer on the wall, 98 bottles of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(98))
  end

  def test_verse_97
    expected_verse =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    assert_equal(expected_verse, verse(2))
  end

  def test_verse_99
    expected_verse =
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(1))
  end

  def test_last_verse
    expected_verse =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(0))
  end
end

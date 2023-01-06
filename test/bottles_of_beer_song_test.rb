require 'minitest/autorun'
require_relative '../lib/generic_verse'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    first_sentence(number) + second_sentence(number)
  end

  def first_sentence(number)
    "#{quantity_and_bottles(number)} of beer on the wall, #{quantity_and_bottles(number).downcase} of beer.\n"
  end

  def second_sentence(number)
    action(number) + ", #{left_over_bottles(number).downcase} of beer on the wall.\n"
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
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
      "No more #{bottles(number)}"
    else
      "#{number} #{bottles(number)}"
    end
  end

  def bottles(number)
    if number == 1
      "bottle"
    else
      "bottles"
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

require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test

  def getBottles(num)
    case num
    when 1
      "1 bottle"
    when 0
      "No more bottles"
    when -1
      "99 bottles"
    else
      "#{num} bottles"
    end
  end

  def second_sentence_start(num)
    case num
    when 1
      "Take it down and pass it around"
    when 0
      "Go to the store and buy some more"
    else
      "Take one down and pass it around"
    end
  end

  def verse(num)
    "#{getBottles(num)} of beer on the wall, #{getBottles(num).downcase} of beer.\n" +
      second_sentence_start(num) + ", #{getBottles(num - 1).downcase} of beer on the wall.\n"
  end

  #Tests starts
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

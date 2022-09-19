require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(number)
    "#{number} bottle of beer on the wall, #{number} bottle of beer.\n" +
      "Take one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
  end

  def test_verse_1
    expected_verse =
      "99 bottle of beer on the wall, 99 bottle of beer.\n" +
      "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    expected_verse =
      "98 bottle of beer on the wall, 98 bottle of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(98))
  end
end

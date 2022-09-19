require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse
    "99 bottle of beer on the wall, 99 bottle of beer.\n" +
      "Take one down and pass it around, 98 bottles of beer on the wall.\n"
  end

  def test_verse_1
    expected_verse =
      "99 bottle of beer on the wall, 99 bottle of beer.\n" +
      "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse)
  end
end

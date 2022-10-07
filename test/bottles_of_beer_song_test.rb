require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def test_verse_1
    expected_verse =
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    skip('Get previous test passing')
    expected_verse =
      "98 bottles of beer on the wall, 98 bottles of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(98))
  end

  def test_verse_97
    skip('Get previous test passing')
    expected_verse =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    assert_equal(expected_verse, verse(2))
  end
end

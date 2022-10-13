require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def verse(starting_number_of_bottles = 99)
    "#{starting_number_of_bottles} bottles of beer on the wall, #{starting_number_of_bottles} bottles of beer.\n" +
        "Take one down and pass it around, #{starting_number_of_bottles - 1} bottles of beer on the wall.\n"
  end

  def verse_2(starting_number_of_bottles = 98)
    "#{starting_number_of_bottles} bottles of beer on the wall, #{starting_number_of_bottles} bottles of beer.\n" +
        "Take one down and pass it around, #{starting_number_of_bottles - 1} bottles of beer on the wall.\n"
  end

  def test_verse_1
    # to get this passing, I created a verse method with the exact string expected in the test
    expected_verse =
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(99))
  end

  def test_verse_2
    # updating the verse made the first test fail because the number of bottles is wrong
    # to get this passing, I created a verse_2 method
    # noticing that verse 1 and verse 2 use the same pattern,
    # I used the strategy of making the similar code more similar by interpolating the "starting_number_of_bottles" into each verse
    expected_verse =
      "98 bottles of beer on the wall, 98 bottles of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse_2(98))
  end

  def test_verse_97
    skip('Get previous test passing')
    expected_verse =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    assert_equal(expected_verse, verse(2))
  end
end

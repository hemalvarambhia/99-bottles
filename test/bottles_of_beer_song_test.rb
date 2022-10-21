require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test
  def standard_verse(starting_number_of_bottles = 99)
    leftover_bottles = starting_number_of_bottles - 1
    "#{starting_number_of_bottles} bottles of beer on the wall, #{starting_number_of_bottles} bottles of beer.\n" +
        "Take one down and pass it around, #{leftover_bottles} bottles of beer on the wall.\n"
  end

  def two_bottles_left_verse(starting_number_of_bottles = 99)
    leftover_bottles = starting_number_of_bottles - 1
    "#{starting_number_of_bottles} bottles of beer on the wall, #{starting_number_of_bottles} bottles of beer.\n" +
        "Take one down and pass it around, #{leftover_bottles} bottle of beer on the wall.\n"
  end

  def test_verse_1
    # to get this passing, I created a verse method with the exact string expected in the test
    expected_verse =
      "99 bottles of beer on the wall, 99 bottles of beer.\n" +
        "Take one down and pass it around, 98 bottles of beer on the wall.\n"

    assert_equal(expected_verse, standard_verse(99))
  end

  def test_verse_2
    # updating the verse made the first test fail because the number of bottles is wrong
    # to get this passing, I created a verse_2 method
    # noticing that verse 1 and verse 2 use the same pattern,
    # I used the strategy of making the similar code more similar by interpolating the "starting_number_of_bottles" into each verse
    # Now that the code is too similar, I removed verse_2 and replaced it with verse here
    # one last change before moving onto next failing test. `starting_number_of_bottles - 1` does not make it clear what it is representing,
    # so creating a variable for that called `leftover_bottles` makes it more clear
    expected_verse =
      "98 bottles of beer on the wall, 98 bottles of beer.\n" +
        "Take one down and pass it around, 97 bottles of beer on the wall.\n"

    assert_equal(expected_verse, standard_verse(98))
  end

  def test_verse_97
    # to get the test to pass initially, I created a method to jsut return the verse string.
    # The only difference between this verse and the other two are that the bottles noun is not plural
    # The next step is to make the new verse method more similar to the original verse method
    expected_verse =
      "2 bottles of beer on the wall, 2 bottles of beer.\n" +
        "Take one down and pass it around, 1 bottle of beer on the wall.\n"

    assert_equal(expected_verse, two_bottles_left_verse(2))
  end

  def test_verse_99
    skip('Get previous test passing')
    expected_verse =
      "1 bottle of beer on the wall, 1 bottle of beer.\n" +
        "Take it down and pass it around, no more bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(1))
  end

  def test_last_verse
    skip('Get previous test passing')
    expected_verse =
      "No more bottles of beer on the wall, no more bottles of beer.\n" +
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

    assert_equal(expected_verse, verse(0))
  end
end

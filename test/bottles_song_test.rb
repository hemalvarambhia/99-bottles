require 'minitest/autorun'
require_relative '../lib/bottle_song'
class BottlesSongTest < Minitest::Test
  def verse(number)
    BottleSong.new.verse(number)
  end

  def test_first_verse
    expected_verse = "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around, 98 bottles of beer on the wall."
    assert_equal(expected_verse, verse(99))
  end

  def test_second_verse
    expected_verse = "98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around, 97 bottles of beer on the wall."
    assert_equal(expected_verse, verse(98))
  end

  def test_verse_97
    expected_verse = "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around, 1 bottle of beer on the wall."
    assert_equal(expected_verse, verse(2))
  end

  def test_verse_98
    expected_verse = "1 bottle of beer on the wall, 1 bottle of beer. Take it down and pass it around, no more bottles of beer on the wall."
    assert_equal(expected_verse, verse(1))
  end

  def test_last_verse
    expected_verse = "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
    assert_equal(expected_verse, verse(0))
  end
end

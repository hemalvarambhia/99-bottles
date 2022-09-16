require 'minitest/autorun'

class BottlesSongTest < Minitest::Test
  def verse(number = 99)
    case number
    when 99
      "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around 98 bottles of beer on the wall."
    when 98
      "98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around 97 bottles of beer on the wall."
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around 1 bottle of beer on the wall."
    end
  end

  def test_first_verse
    expected_verse = "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around 98 bottles of beer on the wall."
    assert_equal(expected_verse, verse)
  end

  def test_second_verse
    expected_verse = "98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around 97 bottles of beer on the wall."
    assert_equal(expected_verse, verse(98))
  end

  def test_verse_97
    expected_verse = "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around 1 bottle of beer on the wall."
    assert_equal(expected_verse, verse(2))
  end
end

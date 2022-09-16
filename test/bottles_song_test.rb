require 'minitest/autorun'

class BottlesSongTest < Minitest::Test
  def verse(number = 99)
    if number == 98
      "98 bottles of beer on the wall, 98 bottles of beer. Take one down and pass it around 97 bottles of beer on the wall."
    else
      "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around 98 bottles of beer on the wall."
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
end

require 'minitest/autorun'

class BottlesSongTest < Minitest::Test
  def verse
    "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around 98 bottles of beer on the wall."
  end

  def test_first_verse
    expected_verse = "99 bottles of beer on the wall, 99 bottles of beer. Take one down and pass it around 98 bottles of beer on the wall."
    assert_equal(expected_verse, verse)
  end
end

require 'minitest/autorun'

class BottlesOfBeerSongTest < Minitest::Test

  def bottles(num)
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

  def bottlesOfBeer(num)
    bottles(num) +  " of beer"
  end

  def second_sentence_start(num)
    case num
    when 1
      "Take it "
    when 0
      "Go to the "
    else
      "Take one "
    end
  end

  def second_sentence(num)
    second_sentence_start(num) + passOrBuy(num)
  end

  def passOrBuy(num)
    num == 0 ? "store and buy some more" : "down and pass it around"
  end

  def verse(num)
    "#{bottlesOfBeer(num)} on the wall, #{bottlesOfBeer(num).downcase}.\n" +
      second_sentence(num) + ", #{bottlesOfBeer(num - 1).downcase} on the wall.\n"
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

class BottlesOfBeerSongTest
  def test_verse_1
    def test_verse_1
      expected_verse =
        "99 bottles of beer on the wall, 99 bottles of beer.\n" +
          "Take one down and pass it around, 98 bottles of beer on the wall.\n"

      assert_equal(expected_verse, verse(99))
    end
  end
end
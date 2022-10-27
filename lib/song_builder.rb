require_relative "bottles_of_beer_song"

class SongBuilder
  attr_reader  :num

  def initialize(num)
    @num = num
  end

  SONG_CLASSES = {
    "1" => OneBottleLeftSong,
    "0" => NoBottlesLeftSong,
  }

  def class_from(num:)
    SONG_CLASSES["#{num}"] || CommonSong
  end

  def build
    class_from(num: num).new(num).create_song
  end

end

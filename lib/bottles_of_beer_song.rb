class CommonSong
  attr_reader  :num

  def initialize(num)
    @num = num
  end

  def create_song
    first_sentence + second_sentence
  end

  private

  def second_sentence
    second_sentence_start + second_sentence_end
  end

  def first_sentence
    "#{bottlesOfBeer(num)} on the wall, #{bottlesOfBeer(num).downcase}.\n"
  end

  def second_sentence_start
    "Take one down and pass it around"
  end

  def second_sentence_end
    ", #{bottlesOfBeer(num - 1).downcase} on the wall.\n"
  end

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
end

class NoBottlesLeftSong < CommonSong
  def second_sentence_start
    "Go to the store and buy some more"
  end
end

class OneBottleLeftSong < CommonSong
  def second_sentence_start
      "Take it down and pass it around"
  end
end

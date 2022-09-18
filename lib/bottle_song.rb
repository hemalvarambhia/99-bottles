require_relative './bottle_number'
class BottleSong
  def verse(number)
    "#{quantity(number)} #{container(number)} of beer on the wall, #{quantity(number).downcase} #{container(number)} of beer.\n#{action(number)}, #{quantity(number_after(number)).downcase} #{container(number_after(number))} of beer on the wall."
  end

  private

  def quantity(number)
    BottleNumber.new(number).to_s
  end

  def container(number)
    BottleNumber.new(number).container
  end

  def action(number)
    BottleNumber.new(number).action
  end

  def pronoun(number)
    BottleNumber.new(number).pronoun
  end

  def number_after(number)
    BottleNumber.new(number).succ.to_i
  end
end

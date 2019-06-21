require 'pry'
class Bottles

  def verse(count)
    if count > 2
      "#{count} bottles of beer on the wall, #{count} bottles of beer.\nTake one down and pass it around, #{count - 1} bottles of beer on the wall.\n"
    elsif count == 2
      "#{count} bottles of beer on the wall, #{count} bottles of beer.\nTake one down and pass it around, #{count - 1} bottle of beer on the wall.\n"
    elsif count == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def list(first,last)
    (last..first).to_a.reverse
  end

  def verses(first, last)
    output = ""
    list(first, last).each do |count|
      output += "#{verse(count)}"
      output += "\n" unless count == last
    end
    output
  end

  def song
    verses(99, 0)
  end
end

puts Bottles.new.song

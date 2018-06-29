class Bottles

  def verse(verse)
    return <<-VERSE
#{buildVerse(verse)}
    VERSE
  end

  def verses(verse1, verse2)
    verses = buildVerse(verse1)
    (verse1 - 1).downto(verse2).each {|verse|
      verses = verses + "

#{buildVerse(verse)}"
    }

    return <<-VERSES
#{verses}
    VERSES
  end

  def song()
    verse = 99
    verses = buildVerse(verse)
    (verse - 1).downto(0).each {|verse|
      verses = verses + "

#{buildVerse(verse)}"
    }

    return <<-SONG
#{verses}
    SONG
  end

  def buildVerse(verse)
    bottlesOnTheWall = getBottlesOnTheWall(verse)
    bottlesOfBeer = bottlesOfBeer(verse)
    remainingBottlesOnTheWall = remainingBottlesOnTheWall(verse)
    whatToDo = whatToDo(verse)

"#{bottlesOnTheWall} of beer on the wall, #{bottlesOfBeer} of beer.
#{whatToDo}, #{remainingBottlesOnTheWall} of beer on the wall."
  end

  def bottlesToTakeDown(verse)
    if verse.to_i == 1
      return "it"
    end

    "one"
  end

  def whatToDo(verse)
    if verse.to_i == 0
      return "Go to the store and buy some more"
    end

    bottlesToTakeDown = bottlesToTakeDown(verse)
    "Take #{bottlesToTakeDown} down and pass it around"
  end

  def remainingBottlesOnTheWall(verse)
    if verse.to_i == 1
      return "no more bottles"
    end

    remainingBottles = verse - 1
    if verse.to_i ==0
      remainingBottles = 99
    end
    "#{remainingBottles} #{getBottleText(remainingBottles)}"
  end

  def getBottlesOnTheWall(verse)
    if verse.to_i == 0
      return "No more bottles"
    end
    return "#{verse} #{getBottleText(verse)}"
  end

  def bottlesOfBeer(verse)
    if verse.to_i == 0
      return "no more bottles"
    end
    return "#{verse} #{getBottleText(verse)}"
  end

  def getBottleText(number)
    if number.to_i == 1
      return "bottle"
    end
    if number.to_i > 1
      "bottles"
    end

  end


end
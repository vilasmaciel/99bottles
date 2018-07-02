class Verse

  def build(verse)
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
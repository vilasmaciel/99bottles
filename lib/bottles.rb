require_relative '../lib/verse'

class Bottles

  def verse(verse)
    return <<-VERSE
#{buildVerse(verse) }
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

  def song
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

  private

  def buildVerse(verse)
    ::Verse.new.build verse
  end


end
module HelperMethods
  def titleize(title)
    words = title.split(" ")
    non_capitals = ['a', 'in', 'the', 'and', 'or', 'from', 'but', 'the', 'of']
    words.each do |word|
      if !non_capitals.include?(word)
        word.capitalize!
      end
    end
    words[0].capitalize!
    puts words.join(" ")
    return words.join(" ")
  end
end

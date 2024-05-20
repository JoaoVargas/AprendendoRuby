def substrings(stringInput, dicionary)
  substringsHash = Hash.new(0)

  stringInput.split(" ").each do |inputWord|
    dicionary.each do |dicionaryWord|
      substringsHash[dicionaryWord] += 1 if inputWord.downcase.include?(dicionaryWord)
    end
  end

  return substringsHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts(substrings("below", dictionary))

def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, word|
    matches = string.scan(/#{word}/i)
    result[word] = matches.length unless matches.empty?
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary) # {"below" => 1, "low" => 1}
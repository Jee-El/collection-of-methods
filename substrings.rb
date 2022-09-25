def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new(0)) do |word, result|
    matches = string.scan(/#{word}/i)
    result[word] = matches.length unless matches.empty?
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings('below', dictionary) # => { "below" => 1, "low" => 1 }

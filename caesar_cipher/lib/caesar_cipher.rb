# frozen_string_literal: true

def caesar_cipher(string, shift)
  string.chars.map do |char|
    alphabet = *'a'..'z'
    next char unless new_index = alphabet.index(char.downcase)

    new_index += shift
    new_index %= 26
    char == char.downcase ? alphabet[new_index] : alphabet[new_index].upcase
  end.join
end

caesar_cipher('Hello, how have you been?', 3) # => "Khoor, krz kdyh brx ehhq?"

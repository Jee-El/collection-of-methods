def caesar_cipher(string, shift)
	string.split('').map do |char|
		alphabet = (char == char.downcase ? 'a'..'z' : 'A'..'Z').to_a
		next char unless new_index = alphabet.index(char)
		new_index += shift
		new_index %= 26
		new_char = alphabet[new_index]
	end.join
end

caesar_cipher("Hello, how have you been?", 3) # => "Khoor, krz kdyh brx ehhq?"
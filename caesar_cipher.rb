def caesar_cipher(string, shift)
	string.split('').map do |letter|
		needed = {alphabet: (letter == letter.downcase) ? ('a'..'z').to_a : ('A'..'Z').to_a}
		next letter unless needed[:new_index] = needed[:alphabet].index(letter)
		needed[:new_index] += (needed[:new_index] + shift > 26) ? (shift - 26) : shift
		letter = needed[:alphabet][needed[:new_index]]
	end.join
end
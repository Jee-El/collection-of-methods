require 'strscan'

roman_to_int_map = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
  'L' => 50,
  'XL' => 40,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

# Doesn't use StringScanner
# Isn't recursive
def roman_to_int(roman, roman_to_int_map)
  romans_arr = roman.scan(/M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/)
  romans_arr.tally.sum { |roman, count| count * roman_to_int_map[roman] }
end

roman_to_int('MMMDXLIII', roman_to_int_map) #=> 3543

# Uses StringScanner
# Is recursive
def recursive_roman_to_int(roman, roman_to_int_map, int = 0)
  roman = roman.is_a?(StringScanner) ? roman : StringScanner.new(roman)
  return int if roman.eos?

  k = roman.scan(/M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/)
  int += roman_to_int_map[k]
  recursive_roman_to_int(roman, roman_to_int_map, int)
end

recursive_roman_to_int('MMMDXLIII', roman_to_int_map) #=> 3543

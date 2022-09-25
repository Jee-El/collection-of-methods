int_to_roman_map = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def int_to_roman(int, int_to_roman_map, romans_str = '')
  str = int.to_s

  return romans_str if str.length.zero?

  zero_pad_digit = str[0].ljust(str.length, '0').to_i

  int_to_roman_map = int_to_roman_map.filter { |num| num <= zero_pad_digit }

  max_key = int_to_roman_map.keys.max

  q, r = zero_pad_digit.divmod(max_key)

  romans_str << int_to_roman_map[max_key] * q

  str.insert(1, r.to_s[0]) unless r.zero?

  int_to_roman(str[1..], int_to_roman_map, romans_str)
end

int_to_roman(3543, int_to_roman_map) #=> MMMDXLIII

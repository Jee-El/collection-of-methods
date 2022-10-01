# Uses recursion
def recursive_largest_palindrome(num = 999 * 999, factor = 999)
  if num.to_s.reverse.to_i == num
    q, r = num.divmod(factor)
    return num if q.to_s.length == 3 && r.zero?

    return recursive_largest_palindrome(num - 1, 999) if factor < 100

    return recursive_largest_palindrome(num, factor - 1)
  end
  recursive_largest_palindrome(num - 1, factor)
end

recursive_largest_palindrome #=> 906609

# Uses simple loops
def loop_largest_palindrome(largest = 0)
  100.upto(999) do |i|
    100.upto(999) do |j|
      p = i * j
      largest = p if p == p.to_s.reverse.to_i && p > largest
    end
  end
  largest
end

loop_largest_palindrome #=> 906609

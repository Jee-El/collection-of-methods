# Returns the nth element of the sequence
def nth_fibonacci_number(n, a = 0, b = 1)
  return a if n < 2

  nth_fibonacci_number(n - 1, b, a + b)
end

nth_fibonacci_number(8) #=> 13

# Returns an array of the n first Fibonacci numbers
def fibonacci_sequence(n, a = 0, b = 1, sequence = [])
  return sequence if n.zero?

  sequence << a

  fibonacci_sequence(n - 1, b, a + b, sequence)
end

fibonacci_sequence(8) #=> [0, 1, 1, 2, 3, 5, 8, 13]

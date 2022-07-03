def stock_picker(stocks_arr)
  profit_pair = stocks_arr.combination(2).max_by { |a, b| b - a }
  [stocks_arr.index(profit_pair[0]), stocks_arr.index(profit_pair[1])]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4]
# Explanation:
# profit: $15 - $3 = $12
# stock_picker[1] = 3
# stock_picker[4] = 15

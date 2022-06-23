def stock_picker(stocks_arr)
  profit_data = { highest_profit_value: 0 }
  stocks_arr.combination(2) do |pair|
    next if pair[0] > pair[1]
    profit_value = pair[1] - pair[0] 
    if profit_data[:highest_profit_value] < profit_value
      profit_data[:highest_profit_value] = profit_value
      profit_data[:day_to_buy] = stocks_arr.index(pair[0])
      profit_data[:day_to_sell] = stocks_arr.index(pair[1])
    end
  end
  [profit_data[:day_to_buy], profit_data[:day_to_sell]]
end

stock_picker([17,3,6,9,15,8,6,1,10]) # [1,4]
# Explanation:
# profit: $15 - $3 = $12
# stock_picker[1] = 3
# stock_picker[4] = 15
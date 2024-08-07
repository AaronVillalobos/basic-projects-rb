def stock_picker(array)
  buy_price = 0
  sell_price = 1
  profit = 0
  max_profit = 0

  while buy_price < array.size and sell_price < array.size do
    if array[buy_price] <= array[sell_price]
      profit = array[sell_price] - array[buy_price]
      max_profit = [max_profit, profit].max
      sell_price += 1
    else
      buy_price += 1
    end
  end

    return max_profit
end

puts stock_picker([17,3,6,9,15,8,6,1,10])

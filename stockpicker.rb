def stock_picker(prices)
  best_prices = [0, 0]
  prices.combination(2).map { |e, i| best_prices = [e, i] if i - e > best_prices[1] - best_prices[0]}
  [prices.index(best_prices[0]), prices.index(best_prices[1])]
end

if $PROGRAM_NAME == __FILE__
  p stock_picker([17,3,6,9,15,8,6,1,10])
  p stock_picker([20, 30, 9, 8, 12, 7, 2])
  p stock_picker([2, 4, 30, 2, 40, 50, 7])
end

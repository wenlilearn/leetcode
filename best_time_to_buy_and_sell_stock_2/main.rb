=begin
Say you have an array for which the ith element is the price of a given stock on day i.

Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).
=end

module Main
  # @param {Integer[]} prices
  # @return {Integer}
  def max_profit(prices)
    if prices.length == 0 || prices.length == 1
      return 0
    end

    max_profit = 0
    for i in 0...(prices.length - 1)
      if prices[i + 1] - prices[i] > 0
        max_profit += prices[i + 1] - prices[i]
      end
    end
    max_profit
  end
end

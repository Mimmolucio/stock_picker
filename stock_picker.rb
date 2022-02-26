# require 'pry-byebug'

def stock_picker(prices)
  highest_profit = 0
  days = []

  prices.each_with_index do |price, day|
    prices.each_with_index do |price2, day2|
      profit = price2 - price
      if profit > highest_profit && day2 > day
        highest_profit = profit
        days[0] = day
        days[1] = day2
      end
    end
  end
  puts days
end


stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker(stock_prices)

def stock_picker(arr)
  buy_day = 0
  sell_day = 0
  arr.size.times do |i|
    j = i + 1
    while j < arr.size do
      if arr[j] - arr[i] > arr[sell_day] - arr[buy_day]
        buy_day = i
        sell_day = j
      end
      j += 1
    end
  end
  puts "Best day to buy: day " + buy_day.to_s
  puts "Best day to sell: day " + sell_day.to_s
end
stock_picker([17,3,6,9,15,8,6,1,10])
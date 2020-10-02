def max_profit(prices)
  #you have to buy a stock before you can sell
  #use the greedy algorithm
  max_num = 0
  min_num = 10000
  #go through the list and for every ele if the ele - min is > then the max then replace max and replace min
  prices.each do |price|
      #only reassign if there is a num < then the min_num
      if price < min_num
        min_num = price
    #every iteration we check if there is a new max_num
        max_num = [max_num, (price - min_num)].max
      end
  end
 
  return max_num

end

puts max_profit([7,1,5,3,6,4])
def stock_picker(prices)
  difference = 0;
  buy_day = 0;
  sell_day = 0;

  (0..prices.length).each do |i|

  	(i..prices.length).each do |j|
      if prices[j].to_i - prices[i].to_i > difference
      	difference = prices[j] - prices[i]
      	buy_day = i;
      	sell_day = j;
      end
  	end	

  end

  if buy_day == 0 and sell_day == 0
  	"It is not the best days for stock operations"
  else
    [buy_day, sell_day]
  end
end

p stock_picker([17, 8, 19, 21, 1, 3, 25])
def stock_picker(prices)
  result_hash = prices.each_with_index.reduce({}) do |result_hash, (num, idx)|
    prices[idx..].each_with_index do |compare_num, compare_idx|
      if compare_num - num > (result_hash[:profit] || 0)
        result_hash[:profit] = compare_num - num 
        result_hash[:indeces] = [idx, compare_idx + idx]
      end
    end
  result_hash
  end
  
  unless result_hash[:profit] 
    "No profit can be made in the chosen timeframe"
  else
  "#{result_hash[:indeces]} for a profit of #{result_hash[:profit]}"
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,2,3,4,5,6,7,8,9])
p stock_picker([16,14,13,12,11,9,7,8,0])
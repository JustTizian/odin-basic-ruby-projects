def stock_picker(prices)
  result_hash = prices.each_with_index.reduce(Hash.new()) do |result_hash, (num, idx)|
    prices[idx..].each_with_index do |compare_num, compare_idx|
      if compare_num - num > (result_hash[:profit] || 0)
        result_hash[:profit] = compare_num - num 
        result_hash[:indeces] = [idx, compare_idx + idx]
      end
    end
  result_hash
  end
  "#{result_hash[:indeces]} for a profit of #{result_hash[:profit]}"
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([100,3,6,2,15,8,6,21,1])
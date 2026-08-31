dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  arr = string.upcase.split(" ")

  arr.reduce(Hash.new(0)) do |result, string|
    dictionary.each do |compare_string|
      if(string.include?(compare_string.upcase))
        result[compare_string] +=1
      end
    end
    result
  end
end


puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
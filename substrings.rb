def substrings(string, dictionary)
  substrings_hash = Hash.new
  string.downcase! 

  dictionary.each do |sub|
  	amount = string.scan(sub.downcase).count

  	if amount > 0
  	  substrings_hash[sub] = amount
  	end
  end

  substrings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
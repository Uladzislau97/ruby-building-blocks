module Enumerable
  def my_each
    return self unless block_given?

    for element in self
      yield(element)
    end
  end

  def my_each_with_index
 	return self unless block_given?

 	index = 0
    for element in self
      yield(element, index)
      index += 1
    end
  end
end

(1..5).my_each do |element|
  puts element
end

(1..5).my_each_with_index do |element, index|
  puts "#{index}-#{element}"
end


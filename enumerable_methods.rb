module Enumerable
  def my_each
    return "Error! You should pass a block" unless block_given?

    for element in self
      yield(element)
    end
  end

  def my_each_with_index
 	return "Error! You should pass a block" unless block_given?

 	index = 0
    for element in self
      yield(element, index)
      index += 1
    end
  end

  def my_select
	return "Error! You should pass a block" unless block_given?

	result = Array.new

	self.my_each do |element|
	  if yield(element)
	  	result << element
	  end
	end

	result
  end

  def my_all?
	return "Error! You should pass a block" unless block_given?

	self.my_each do |element|
	  return false unless yield(element)
	end  	

	true
  end 
end

(1..5).my_each do |element|
  puts element
end

puts

(1..5).my_each_with_index do |element, index|
  puts "#{index}-#{element}"
end

puts

new_array = (1..5).my_select do |element|
  element % 2 == 0
end
puts new_array

puts

puts (1..5).my_all? { |element| element > 1 }

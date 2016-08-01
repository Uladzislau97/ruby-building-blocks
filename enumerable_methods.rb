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

  def my_any?
  	return "Error! You should pass a block" unless block_given?

	self.my_each do |element|
	  return true if yield(element)
	end  	

	false
  end

  def my_none?
  	return "Error! You should pass a block" unless block_given?

	self.my_each do |element|
	  return false if yield(element)
	end  	

	true
  end

  def my_count
	return "Error! You should pass a block" unless block_given?

	amount = 0

	self.my_each do |element|
	  amount += 1 if yield(element) 
	end  	

	amount
  end
end



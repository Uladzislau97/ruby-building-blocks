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

  #can get proc or block
  #if block is given my_map uses it
  #else uses proc
  def my_map(proc)     
	result = Array.new

	if block_given?
	  self.my_each do |element|
	  	result << yield(element)
	  end
	else
	  self.my_each do |element|
	  	result << proc.call(element)
	  end
	end

	result
  end

  def my_inject(start=0)
	return "Error! You should pass a block" unless block_given?

	self_array = self.to_a
	result = self_array[start]
	n = self_array.length

	(start+1...n).my_each do |element|
	  result = yield(result, self_array[element])
	end

	result
  end
end



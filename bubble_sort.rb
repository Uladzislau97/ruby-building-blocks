def bubble_sort(array)
  n = array.length
  
  (n - 1).times do
    for i in (0...n-1)
  	  if array[i] > array[i + 1]
  	    array[i], array[i + 1] = array[i + 1], array[i]
  	  end
    end
  end

  array
end

def bubble_sort_by(array)
  n = array.length
  
  (n - 1).times do
    for i in (0...n-1)
  	  if yield(array[i], array[i + 1]) > 0
  	    array[i], array[i + 1] = array[i + 1], array[i]
  	  end
    end
  end

  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort_by(["hi","hello","hey"]) { |left, right| right.length - left.length }
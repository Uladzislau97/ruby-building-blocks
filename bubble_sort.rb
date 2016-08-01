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

p bubble_sort([5, 4, 3, 2, 1, 0])
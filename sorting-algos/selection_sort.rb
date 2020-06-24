def selection_sort(array)
    i = 0
     while i < array.length - 2
      smallest = find_smallest(array, i)
      array[i], array[smallest] = array[smallest], array[i]
      i += 1
    end
    return array
  end
  
  def find_smallest(array, i)
    smallest = array[i]
    smallest_index = i
      while i < array.length
        if array[i] < smallest
          smallest = array[i]
          smallest_index = i
        end
      i += 1
      end
      puts smallest_index
      return smallest_index
  end 
  
  
  print selection_sort([5, 10, 12, 1, 2, 7])
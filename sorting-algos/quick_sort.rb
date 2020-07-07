def quickSort(array, start, end)
    if start < end
      j = partition(start, end)
      quickSort(start, j)
      quickSort(j+1, end)
  end
   
  def partition(array, start, end)
    pivot = array[start]
    i = start, j = end
      while i < j
        while array[i] <= pivot
          i+=1
          while array[j] >= pivot
            j+=1
          end
        end
      end
  
    if i < j
      array[i], array[j] = array[j], array[i]
    end
  
    array[l], array[j] = array[j], array[l]
    return j
  end
  
  okay = [11, 4, 2, 7, 23]
  quickSort(okay, 11, 23)
  
  
  --------------
  
  def quickSort(array, first, last)
    if first < last
      j = partition(array, first, last)
      quickSort(array, first, j-1)
      quickSort(array, j+1, last)
    end
    puts array
  end
   
  # def partition(array, first, last)
  #   pivot = array[first]
  #   i = first
  #   j = last
  
  #     while i < j-1
  #       while array[i].to_i <= pivot.to_i do
  #         i+=1
  #         while array[j].to_i >= pivot.to_i do
  #           j+=1
  #         end
  #       end
        
  #       if i < j
  #         array[i], array[j] = array[j], array[i]
  #       end
  #     end
  
  #   array[first], array[j] = array[j], array[first]
  #   partition_index = j
  #   return partition_index
  # end
  
  # mycodeschool implementation
  
  def partition(array, first, last)
    pivot = array[last]
    pIndex = first
    i = first
      while i < last
        if array[i].to_i <= pivot.to_i
          array[i], array[pIndex] = array[pIndex], array[i]
          pIndex += 1
        end
      i += 1
      end
      array[pIndex], array[last] = array[last], array[pIndex]
      return pIndex
  end 
  
  okay = [11, 4, 2, 7, 23]
  quickSort(okay, 0, 4)
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


# selection sort problem?
  #iterate through array two times to compare the first number to the second
#go through array until second number is smaller than the first number
#each time second number is found, swap it with the first one
#need to set minimum number as placeholder

# def selection_sort (array, n)
#   i = 0
#   while i < n-2
#     i_min = i
#       j = i + 1
#       while j < n
#         if array[j] < array[i_min]
#           i_min = j
#         end
#         j+=1
#       end
#     i+=1
#   end

#   temp = array[i]
#   array[i] = array[i_min]
#   array[i_min] = temp

# return array
# end

# array = [3, 1, 7, 10, 2]
# selection_sort(array, array.size)
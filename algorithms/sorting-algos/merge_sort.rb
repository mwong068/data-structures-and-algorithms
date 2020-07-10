def merge_sort(array, sorted_left, sorted_right)
    array_size = array.length
    left_size = sorted_left.length
    right_size = sorted_right.length
  
    array_pointer = 0
    left_pointer = 0
    right_pointer = 0
  
    while left_pointer < left_size && right_pointer < right_size
      if sorted_left[left_pointer] < sorted_right[right_pointer]
        array[array_pointer] = sorted_left[left_pointer]
        left_pointer+=1
      else
        array[array_pointer] = sorted_right[right_pointer]
        right_pointer+=1
      end
      array_pointer+=1
    end
  
    while left_pointer < left_size
        array[array_pointer] = sorted_left[left_pointer]
        left_pointer+=1
        array_pointer+=1
    end
  
    while right_pointer < right_size
       array[array_pointer] = sorted_right[right_pointer]
       right_pointer+=1
       array_pointer+=1
    end
  
    return array
  end
  
  def breakdown(array)
    if array.length <= 1
      return array
    end
  
    array_size = array.length
    middle = (array.length / 2).round
  
    left_side = array[0...middle]
    right_side = array[middle...array_size]
  
    sorted_left = breakdown(left_side)
    sorted_right = breakdown(right_side)
  
    merge_sort(array, sorted_left, sorted_right)
  
    puts array
    return array
  end
  
  try = [2, 35]
  breakdown(try)


  # def merged_sorted_arrays(arr1, arr2)
#   merged_array = []
#   merged_array_size = arr1.length + arr2.length

#   arr1_count = 0
#   arr2_count = 0
#   merged_array_count = 0

#   while merged_array_count < merged_array_size
#     if arr1_count >= arr1.length || arr1[arr1_count] > arr2[arr2_count] 
#       merged_array[merged_array_count] = arr2[arr2_count]
#       arr2_count += 1
#     elsif
#       arr2_count >= arr2.length || merged_array[merged_array_count] = arr1[arr1_count]
#       arr1_count +=1
#     end

#     merged_array_count += 1
#   end

#   return merged_array
# end


# first = [3, 4, 6, 10, 11, 15]  # arr1
# second = [5, 8, 12, 14, 19]      # arr2

# merged_sorted_arrays(first, second)

# # [3, 4, 5, 6, 8, 10, 11, 12, 14, 15 ] #merged_array
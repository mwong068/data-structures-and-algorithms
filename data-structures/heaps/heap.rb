#girl from blog-------------------------------------
def heap_sort(array)
    n = array.length - 1
    a = array
    
    (n / 2).downto(0) do |i|      
      create_max_heap(a, i, n) 
    end
  
    while n > 0
      a[0], a[n] = a[n], a[0]
      n -= 1
      create_max_heap(a, 0, n)
    end
    a
  end
  
  
  def create_max_heap(array, parent, limit)
    root = array[parent]
    while (child = 2 * parent) <= limit do
      if child < limit && array[child] < array[child + 1]
        child += 1
      break if root >= array[child]
      array[parent], parent = array[child], child
    end
    array[parent] = root
  end
  
  arr = [8,2,16,3,9,1,3,20,7,19,5,101,3,17]
  p heap_sort(arr)
  
  
  #interview cake------------------------------------
  def left_child_index(parent_index)
    return parent_index * 2 + 1
  end
  
  def right_child_index(parent_index)
    return parent_index * 2 + 2
  end
  
  def make_a_heap(heap, length, index)
  
    while index < heap.length do
  
    left_child = left_child_index(index)
    right_child = right_child_index(index)
  
      if left_child < heap.length
        largest_child_index = left_child
  
        if right_child < heap.length && heap[right_child] > heap[left_child]
          largest_child_index = right_child
        end
      end
      
      if heap[index] < heap[largest_child_index]
        heap[index], heap[largest_child_index] = heap[largest_child_index], heap[index]
        index = largest_child_index
      else
        break
      end
  
    end
  
    return heap
  end
  
  def get_max_heap(heap, length)
    max = heap[0]
    heap[0] = heap[length - 1]
    make_a_heap(heap, length, 0)
    puts max
  end
  
  def largest_num(heap, length, num)
    i = 0
    while i < num do
      get_max_heap(heap, length)
      i += 1
    end
  end
  
  heap = [23, 34, 54, 22, 1, 21, 12]
  distance = heap.length
  make_a_heap(heap, distance, 0)
  largest_num(heap, distance, 3)
  # get_max_heap(heap, distance)
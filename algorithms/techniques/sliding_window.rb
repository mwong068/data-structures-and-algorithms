# fixed array
def maxSumSubarray(array, k)
    maxValue = 0
    currentRunningSum = 0
  
    i = 0
    while i < array.length do
      currentRunningSum += array[i]
      
      if i >= k-1
        maxValue = [maxValue, currentRunningSum].max
        currentRunningSum -= array[i - (k-1)]
      end
  
      i += 1
    end
  
    puts maxValue
  end
  
  arrie = [3, 5, 6, 7, 23, 1, 122342]
  maxSumSubarray(arrie, 3)
  
  # dynamic array
  def smallestSubarry(array, target)
  
    minWindowSize = 100
    currentWindowSum = 0
    windowStart = 0
  
    windowEnd = 0
    while windowEnd < array.length do
      currentWindowSum += array[windowEnd]
  
      while currentWindowSum >= target do
        minWindowSize = [minWindowSize, (windowEnd - windowStart + 1)].min
        currentWindowSum -= arr[windowStart]
        windowStart += 1
      end
  
      windowEnd += 1
    end
  
    puts minWindowSize
  
  end
  
  arro = [4, 2, 2, 7, 8, 1, 2, 8, 10]
  smallestSubarray(arro, 8)
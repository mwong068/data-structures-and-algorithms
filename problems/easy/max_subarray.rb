# https://leetcode.com/problems/maximum-subarray/

# 53. Maximum Subarray

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.

def max_sub_array(nums)
    current_sum = nums[0]
    largest_sum = nums[0]
    
    i = 1
    while i < nums.length
        current_sum = [nums[i], current_sum + nums[i]].max
        largest_sum = [largest_sum, current_sum].max
        i += 1
    end

    return largest_sum
end

testing = [-2,1,-3,4,-1,2,1,-5,4]
puts max_sub_array(testing)
# 198. House Robber

# https://leetcode.com/problems/house-robber/

# Example 1:

# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
#              Total amount you can rob = 1 + 3 = 4.

# Example 2:

# Input: nums = [2,7,9,3,1]
# Output: 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
#              Total amount you can rob = 2 + 9 + 1 = 12.

def rob(nums)
    if nums.length == 0
        return 0
    end
    
    memo = []
    memo[0] = 0
    memo[1] = nums[0]
    
    i = 1
    while i < nums.length
        val = nums[i]
        memo[i+1] = [memo[i], memo[i-1] + val].max
        i += 1
    end
    
    return memo[nums.length]
    
end

# i = 4
# [0, 2, 7, 11, 11, 12]
# val = 1

nums = [2, 7, 9, 3, 1]
puts rob(nums)

# https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

# 448. Find All Numbers Disappeared in an Array

# Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

# Find all the elements of [1, n] inclusive that do not appear in this array.

# Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.

# Example:

# Input:
# [4,3,2,7,8,2,3,1]

# Output:
# [5,6]

require 'set'

def find_disappeared_numbers(nums)
    n = nums.length
    results = []
    
    numbers = nums.to_set
    
    i = 1
    while i <= n
        if numbers.include?(i)
            numbers.delete(i)
        else
            results.push(i)
        end
        i += 1
    end
    
    return results
end
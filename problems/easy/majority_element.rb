# https://leetcode.com/problems/majority-element/

# 169. Majority Element

# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

# You may assume that the array is non-empty and the majority element always exist in the array.

# Example 1:

# Input: [3,2,3]
# Output: 3
# Example 2:

# Input: [2,2,1,1,1,2,2]
# Output: 2

def majority_element(nums)
    elements = {}
    
    nums.each do |thing|
        if elements[thing]
            elements[thing] += 1
        else
            elements[thing] = 1
        end
    end
    
    elements.each do |key, value|
        if value > nums.length / 2
            return key
        end
    end
end
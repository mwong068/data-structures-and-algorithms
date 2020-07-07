# Question
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/

# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    i = 0
    j = 0
    if nums.length == 0
        return 0
    end
    while j < nums.length do
        if nums[j] != nums[i]
            i += 1
            nums[i] = nums[j]
        end
        j += 1
    end
    
    return i + 1
end

# Solution video:
# https://www.youtube.com/watch?v=VSq4wxSpbTc
# 35. Search Insert Position

# Example 1:
# Input: nums = [1,3,5,6], target = 5
# Output: 2

# Example 2:
# Input: nums = [1,3,5,6], target = 2
# Output: 1

# Example 3:
# Input: nums = [1,3,5,6], target = 7
# Output: 4

# Example 4:
# Input: nums = [1,3,5,6], target = 0
# Output: 0

# Example 5:
# Input: nums = [1], target = 0
# Output: 0

def search_insert(nums, target)
    if nums.length == 1
        if target > nums[0]
            return 1
        else
            return 0
        end
    end

    i = 0
    while i < nums.length
        if nums[i] == target
            return i
        elsif target < nums[i]
            return i
        end
        i += 1
    end

    return nums.length
end

puts search_insert([1,2,3,4,7], 5)
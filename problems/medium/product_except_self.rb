# https://leetcode.com/problems/product-of-array-except-self/

# 238. Product of Array Except Self

# Example:

# Input:  [1,2,3,4]
# Output: [24,12,8,6]

def product_except_self(nums)
    before_array = []
    after_array = []
    product = 1
    i = 0
    while i < nums.length 
        before_array.push(product)
        product *= nums[i]
        i += 1
    end
    
    product = 1
    j = nums.length - 1
    while j >= 0
        after_array.unshift(product)
        product *= nums[j]
        j -= 1
    end

    
    k = 0
    while k < nums.length
        before_array[k] = before_array[k] * after_array[k]
        k += 1
    end
    
    return before_array
end
#  https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/

#  108. Convert Sorted Array to Binary Search Tree

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
#   need to go depth first so we can add each pair of numbers on at each level  
        
    if nums.length == 0
        return nil
    end
    
    distance = nums.length / 2
    
    root = TreeNode.new(nums[distance])
    root.left = sorted_array_to_bst(nums[0...distance])
    root.right = sorted_array_to_bst(nums[distance+1..nums.length-1])
    
    return root
end
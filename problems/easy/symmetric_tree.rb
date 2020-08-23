# https://leetcode.com/problems/symmetric-tree/

# 101. Symmetric Tree

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return check_symmetry(root, root)
end

def check_symmetry(node_1, node_2)
    if node_1 == nil && node_2 == nil
        return true
    end
    
    if node_1 == nil || node_2 == nil
        return false
    end
    
    test_1 = check_symmetry(node_1.right, node_2.left)
    test_2 = check_symmetry(node_1.left, node_2.right)
    
    if node_1.val == node_2.val && test_1 == true && test_2 == true
        return true
    end
    
    return false
    
end
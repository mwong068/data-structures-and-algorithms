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
# @param {Integer} val
# @return {TreeNode}

def search_bst(root, val)
    node = root
    
    while node
        if node.val == val
            return node
       elsif node.val < val
            node = node.right
        else
            node = node.left
        end 
    end
    
    return nil
end
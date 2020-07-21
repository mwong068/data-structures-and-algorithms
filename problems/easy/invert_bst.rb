# problem to invert BST

class BinaryTreeNode

    attr_accessor :value, :left, :right
    
    def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end

    def insert_left(value)
        @left = BinaryTreeNode.new(value)
    end

    def insert_right(value)
        @right = BinaryTreeNode.new(value)
    end

end


def invert_tree(root)

    if root == nil
        return nil
    end

    left = invert_tree(root.left)
    right = invert_tree(root.right)

    root.left = right
    root.right = left

    return root

end

tree = [1, 4, 5, 6, 7, 10, 12, 16, 19]

root = BinaryTreeNode.new(tree[0])

puts invert_tree(root)
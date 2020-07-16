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

  # check if BST is a BST

  def push_node(root, value)
    if value > root.value
      if root.right
        push_node(root.right, value)
      else
        root.insert_right(value)
      end
    end

    if value < root.value
      if root.left
        push_node(root.left, value)
      else
        root.insert_left(value)
      end
    end
  end


  def traverse(node)
    if node == nil
      return
    end

    if node.left
      traverse(node.left)
    end
    puts node.value
    
    if node.right
      traverse(node.right)
    end
  end

  array = [3, 5, 7, 2, 1, 6, 4, 9, 8]

  root = BinaryTreeNode.new(array.shift)

  array.each do |node|
    push_node(root, node)
  end

  traverse(root)

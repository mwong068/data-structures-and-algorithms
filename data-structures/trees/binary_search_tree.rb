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

  # check if BST is BST

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

  # check if BST is a BST - interview cake

  def is_binary_tree?(root)

    stack = []
    stack.push([root, -Float::INFINITY, Float::INFINITY])

    until stack.empty?
      node, lower_bounds, upper_bounds = stack.pop

      if node.value <= lower_bounds || node.value >= upper_bounds
        return false
      elsif node.left
        stack.push([node.left, lower_bounds, node.value])
      elsif node.right
        stack.push([node.right, node.value, upper_bounds])
      end
    end

    return true
  end

 puts is_binary_tree?(root)


def delete_node(root, value)
  parent = nil
  current = root
  
  while current and current.value != value
    parent = current
    
    if value < current.value
      current = current.left
    else
      current = current.right
    end

    if current == nil
      return root
    end
  end

  # leaf node with no children
  if current.left == nil and current.right == nil
    if current != root
      if parent.left == current
        parent.left = nil
      else
        parent.right = nil
      end
    else
      root = nil
    end
  
  # node has two children
  elsif current.left and current.right
    successor = minimum_key(current.right)
    value = successor.value
    delete_node(root, value)
    current.value = value

  # node has one child 
  else
    if current.left
      child = current.left
    else
      child = current.right
    end

    if current != root
      if current == parent.left
        parent.left = child
      else
        parent.right = child
      end
    else
      root = child
    end
  end

  return root

end

puts delete_node(root, 2)

traverse(root)

def minimum_key(node)
  while node.left
    current = node.left
  end
    
  return current
end
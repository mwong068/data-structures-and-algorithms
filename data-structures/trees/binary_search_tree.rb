class BinaryNodeTree
    attr_accessor :value
    attr_reader :left, :right
  
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
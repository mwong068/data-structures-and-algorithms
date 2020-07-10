# 6. Consider a directed graph of small non-negative integers where each integer is less than 60,000 and each integer is unique. In this case, a directed graph is a data structure where a node is represented by a unique integer and each node has zero or more child nodes. As above, don't just use an existing graph library.
 
#     - Write a function that creates a node in a graph.
#     - Write a function that inserts a node as a child of another node.
#     - These functions should not allow cycles to be created. That is, a node may not directly or indirectly point to itself.
#     - Write a function to print out a graph
     
#     Here is a simple example graph without cycles:
     
#     ```
#     1 -> 2, 3, 4
#     2 -> 5
#     3 -> 6
#     4 -> 3, 6
#     5 -> 6
#     6 -> No children
#     ```

    
class DirectedAcyclicGraphNode

    attr_accessor :value, :left, :right
  
    def initialize(value)
      @value = value
      @left  = nil
      @right = nil
    end
end
  
    def create(graph, value)
      @left = BinaryTreeNode.new(value)
    end
  
    def insert_right(value)
      @right = BinaryTreeNode.new(value)
    end
  end
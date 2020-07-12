  class GraphNode

  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end
  
  def add_child(child_node)
    @children << child_node
  end

end


class DirectedAcyclicGraph

  attr_accessor :nodes

  def initialize
    @nodes = {}
  end

  def add_node(node)
      @nodes[node.value] = node
  end

  # only one edge because it is a directed graph and no cycles means no two edges
  def add_children(node1, node2)
    @nodes[node1].add_child(@nodes[node2])
  end

  def print_graph(nodes)
    @nodes.each do |node, children|
      print("#{node}" + "=>" + "#{children}, \n")
    end
  end

end
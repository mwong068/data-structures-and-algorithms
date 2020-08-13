Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# class Solution:
#     def levelOrderBottom(self, root: TreeNode) -> List[List[int]]:
#         if root == None:
#           return None
        
#         results = []
#         q = []
#         #you can initialize q with the root already inside
#         q.append(root)
#         while len(q) > 0:
#           nodes = []
#           #why the fk do we need i?
#           for _ in range(len(q)):
#             node = q.pop(0)
#             #add the curr node val
#             nodes.append(node.val)
#             if node.left != None: q.append(node.left)
#             if node.right != None: q.append(node.right)
#           results.insert(0, nodes)
#         return results

def level_order_bottom(root)
  if root == nil
    return []
  end
  
  results = []
  queue = []
  queue.push(root)
  # print(queue)
  
  while queue.length > 0
    nodes = []
    size = queue.size
    size.times {
    # queue.each do |thing|
      node = queue.shift
      nodes.push(node.val)
      # p nodes
      # queue.push(node.left) if node.left
      # queue.push(node.right) if node.right
      if node.left
        queue << node.left
      end
      if node.right
        queue << node.right
      end
      # p queue
    # end
    }
    results.unshift(nodes)
  end
  results
end
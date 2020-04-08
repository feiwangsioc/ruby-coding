@max_d = 0
def diameter_of_binary_tree(root)
  @max_d = 0
  return @max_d if root.nil?
  
  depth(root)
  @max_d
end

def depth(node)
  return 0 if node.nil?
  
  left = depth(node.left)
  right = depth(node.right)  
  curr = left + right
  @max_d = curr if curr > @max_d
  
  [left, right].max + 1
end


puts diameter_of_binary_tree([1,2,3,4,5])
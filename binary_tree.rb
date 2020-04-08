class TreeNode
	attr_accessor :value, :left, :right 

	def initialize(value)
		@value = value
	end 
end 

def find_node(node, value)
	return false unless node
	return true if node.value == value

	find_node(node.left, value) || find_node(node.right, value)
end

def find_node(node, value)
	stack = [node]
	until stack.empty?
		node = stack.pop
		p node.value

		return true if node.value == value
		stack << node.left if node.left
		stack << node.right if node.right 
	end 
	false 
end 



tree = TreeNode.new(5)
tree.left = TreeNode.new(3)
tree.right = TreeNode.new(8)

tree.left.left = TreeNode.new(2)
tree.left.right = TreeNode.new(1)

puts find_node(tree, 7)

# p tree


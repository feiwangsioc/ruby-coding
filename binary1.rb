class TreeNode
	attr_accessor :value, :left, :right 
	def initialize(value)
		@value = value 
	end 
end 


tree = TreeNode.new(5)
tree.left = TreeNode.new(3)
tree.right = TreeNode.new(8)

tree.left.left = TreeNode.new(2)
tree.left.right = TreeNode.new(1)

# p tree 

# n = 2048

# puts n.to_s(2)    # => 

# n = 7235    # => 
# puts binary = n.to_s(2)  # => 

# puts binary_copy = binary.dup
# p binary_copy[0]

# p binary.scan(/1+/).max

def find_longest(n)
	binary = n.to_s(2)

    p binary
    a , b = 0
	# (0...binary.size).map do |i|
		binary_copy = binary.dup

		# binary_copy[i] = "1"

		# puts binary_copy

	  a = binary_copy.scan(/0+/).max.size 
	  b = binary_copy.scan(/1+/).max.size 
	# end 
	a > b ? a : b 
end 


puts find_longest(7235)

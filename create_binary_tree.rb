class TreeNode

	attr_accessor :value, :left, :right
	
	def initialize(value, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end

end


class BinaryTree

	def initialize(root_value)
		@root_value = TreeNode.new(root_value)
	end
end

p my_tree = BinaryTree.new(1)
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

	def insert_node(node_value)
		current_node = @root_value
		if node_value < current_node.value && current_node.left == nil
			@root_value.left = TreeNode.new(node_value)
		else node_value > current_node.value && current_node.right == nil
			@root_value.right = TreeNode.new(node_value)
		end
	end

end




p my_tree = BinaryTree.new(2)
p my_tree.insert_node(6)

p my_tree



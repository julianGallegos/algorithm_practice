class TreeNode

	attr_accessor :data, :left, :right
	
	def initialize(data)
		@data = data
	end

end

class BinaryTree

	attr_accessor :root

	def initialize
		@root = nil
	end

	def new_node_insertion(value)
		@root = insert(@root, value)
	end

	private

	def insert(node,value)
		
		return TreeNode.new(value) unless node
		
		if value < node.data
			node.left = insert(node.left, value)
		else
			node.right = insert(node.right, value)
		end
		return node
	end

	def print_tree
		current_node = @root
		left_node = current_node.left
		right_node = current_node.right
		while current_node != nil
			p current_node
			p current_node.left.value
			p current_node.right.value
		end
	end

end

my_tree = BinaryTree.new

my_tree.new_node_insertion(15)

my_tree.new_node_insertion(7)

my_tree.new_node_insertion(11)

my_tree.new_node_insertion(2)

p my_tree.root.data

p my_tree.root.left.data

p my_tree.root.left.right.data

p my_tree.root.left.left.data 

my_tree.print_tree


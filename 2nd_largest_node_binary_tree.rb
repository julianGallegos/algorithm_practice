class Node

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


	def insert_node(value)
		#can only insert a node into a tree if you compare the incoming node to the current root
		@root = node_insertion_helper(@root, value)
	end


# this method finds the largest node, however it overrides the root value of the tree every iteration
	def find_largest_node

		if @root.right != nil
			 @root = @root.right
			 find_largest_node
		end
			return @root.data
	end

	private

	def node_insertion_helper(current_node, value)
		
		if current_node == nil
			current_node = Node.new(value)

		elsif current_node.data > value
			current_node.left = node_insertion_helper(current_node.left, value)

		else current_node.data < value
			current_node.right = node_insertion_helper(current_node.right, value)
		end
			return current_node
	end

end


my_tree = BinaryTree.new

my_tree.insert_node(10)

my_tree.insert_node(15)

my_tree.insert_node(20)

my_tree.insert_node(100)

p my_tree.find_largest_node
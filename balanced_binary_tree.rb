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
			@root = node_insertion_helper(@root, value)
	end

	private

	def node_insertion_helper(current_node, value)
		if current_node == nil
			current_node = Node.new(value)

		elsif value < current_node.data
			current_node.left = node_insertion_helper(current_node.left, value)
		else value > current_node.data
			current_node.right = node_insertion_helper(current_node.right, value)
		end
		return current_node
	end
end

my_tree = BinaryTree.new

my_tree.insert_node(15)

my_tree.insert_node(7)

my_tree.insert_node(2)

my_tree.insert_node(11)

my_tree.insert_node(30)

my_tree.insert_node(20)

p my_tree.root.data == 15

p my_tree.root.left.data == 7

p my_tree.root.left.left.data == 2

p my_tree.root.left.right.data == 11

p my_tree.root.right.data == 30

p my_tree.root.right.left.data == 20

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
			#inserts a node at the root of the tree
			#in order to insert a node though, the incoming node has to be compared to the root node
			#after the node is compared to the root value, the incoming root has to be compared to the current node it is on
			@root = node_insertion_helper(@root, value)
	end

	private
			#this is the helper method that will recursively compare the incoming value to the current node

	def node_insertion_helper(current_node, value)
			#if there is no node in the root, the root value is assigned to the incoming node
		if current_node == nil
			current_node = Node.new(value)

			#if the value of the incoming node less than the current node value
				#the current nodes left value becomes the new node value
					#however before the node is inserted the current node value is compared again to the new node value, this process will repeat until the current_node's value is nil
		elsif current_node.data > value
			p current_node.left = node_insertion_helper(current_node.left, value)
		else current_node.data < value
			p current_node.right = node_insertion_helper(current_node.right, value)
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

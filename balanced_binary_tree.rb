class Node

	attr_accessor :value, :left, :right
	
	def initialize(value)
		@value = value
	end

end


class BinaryTree

	attr_accessor :root
	def initialize(root)
		@root = root
	end

	def insert_node(node)
		if @root.value < node.value
			@root.right = node
		else @root.left = node
		end
	end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

p my_tree = BinaryTree.new(node1)

p my_tree.insert_node(node2)




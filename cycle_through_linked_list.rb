class Node

	attr_accessor :value, :pointer
	def initialize(value)
		@value = value
	end

end


class NodeList

	attr_accessor :head, :tail

	def initialize(node)
		@head = node
		@tail = node
	end

	def insert_node(node_to_insert)
		@tail.pointer = node_to_insert
		@tail = @tail.pointer
	end

	def print_forward(node_to_print)

		while node_to_print != nil
			puts node_to_print.value
		  node_to_print = node_to_print.pointer
		  end
	end	

	# #brute force solution

	# def is_cycled_list?(starting_node)
	# 	#iterate through all the node values in a hash
	# 	#if any of the node.next is pointing to a node value in the hash then it has a cycle
	# 	#if it is not pointing to any of the nodes in the hash, then there is no cycle
	# 	nodes_checked = []
	# 	until starting_node.next.nil? do
	# 		return true if nodes_checked.include? starting_node
	# 		nodes_checked << starting_node
	# 		starting_node = starting_node.next
	# 	end
	# 	false
	# end

	def is_cycled_list?(starting_node)
		slow_runner = starting_node
		fast_runner = starting_node

		until slow_runner.pointer.nil? == fast_runner.pointer.nil?
			slow_runner = starting_node.pointer
			fast_runner = starting_node.pointer.pointer
			return true if slow_runner == fast_runner
		end
		return false
	end

	# def is_cycled_list?(starting_node)
	# 	slow_runner = starting_node
	# 	fast_runner = starting_node

	# 	while slow_runner != nil || fast_runner.pointer != nil
	# 		slow_runner = starting_node.pointer
	# 		fast_runner = starting_node.pointer.pointer
	# 			if slow_runner == fast_runner
	# 				return true
	# 			end
	# 	end
	# 	return false
	# end 



end
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)



my_list = NodeList.new(node1)

my_list.insert_node(node2)
my_list.insert_node(node3)
my_list.insert_node(node4)
my_list.insert_node(node5)
my_list.insert_node(node6)

node6.pointer = node3



# p "*"*50
# p my_list.head.value
# p "*"*50
# p my_list.tail.value

p p my_list.is_cycled_list?(node1)








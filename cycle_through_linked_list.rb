class Node

	attr_accessor :value, :next
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
		@tail.next = node_to_insert
		@tail = @tail.next
	end

	def print_forward(node_to_print)

		while node_to_print != nil
			puts node_to_print.value
		  node_to_print = node_to_print.next
		  end
	end	

	#brute force solution
	def is_cycled_list?(starting_node)
		#iterate through all the node values in a hash
		#if any of the node.next is pointing to a node value in the hash then it has a cycle
		#if it is not pointing to any of the nodes in the hash, then there is no cycle
		nodes_checked = []
		until starting_node.next.nil? do
			return true if nodes_checked.include? starting_node
			nodes_checked << starting_node
			starting_node = starting_node.next
		end
		false
	end

end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)

# node1.next = node2
# node2.next = node3
# node3.next = node4
# node4.next = node5


my_list = NodeList.new(node1)

my_list.insert_node(node2)
my_list.insert_node(node3)
my_list.insert_node(node4)
my_list.insert_node(node5)

my_list.print_forward(node1)
p "*"*50
p my_list.head.value
p "*"*50
p my_list.tail.value

p my_list.is_cycled_list?(node1)

class Node

	attr_accessor :value, :next
	
	def initialize(value)
		@value = value
	end

end


class LinkedList

	attr_accessor :head, :tail

		def initialize(node)
			@head = node
			@tail = node
		end

		def print_forward(node)
			current_node = node
			while current_node != nil
				puts current_node.value
				 current_node = current_node.next
			end
		end

		def insert_at_tail(node_to_insert)
			@tail.next = node_to_insert
			@tail = node_to_insert
		end

#brute force solution
		def kth_to_last_node(kth, head)
			total_length = 1
			current_node = head
			while current_node.next != nil
				current_node = current_node.next
				total_length += 1
			end
			how_far_from_head = total_length - kth
			puts "this is how far you are #{how_far_from_head}"
			
			current_node = head

			how_far_from_head.times do 
				current_node = current_node.next
			end
			return current_node.value
		end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)

my_list = LinkedList.new(node1)

my_list.insert_at_tail(node2)
my_list.insert_at_tail(node3)
my_list.insert_at_tail(node4)
my_list.insert_at_tail(node5)
my_list.insert_at_tail(node6)
# node1.next = node2
# node2.next = node3
# node3.next = node4
# node4.next = node5


my_list.print_forward(node1)
p "this is the head #{my_list.head.value}"

p "this is the tail #{my_list.tail.value}"

p my_list.kth_to_last_node(3, node1)





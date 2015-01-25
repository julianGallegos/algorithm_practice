# class Stack 

# 	attr_accessor :store
	
# 	def initialize
# 		@store = []
# 	end

# 	def push(item_to_push)
# 		@store << item_to_push
# 	end

# 	def pop
# 		@store.pop
# 	end

# 	def peek_at_next_item
# 		@store.last
# 	end

# 	def is_empty?
# 		@store.nil?
# 	end

# end

# class QueuedStack

# 	attr_reader :inStack, :outStack

# 	def initialize
# 		@inStack = Stack.new
# 		@outStack = Stack.new
# 	end

# 	def enqueue(item_to_push)
# 		@inStack.store << item_to_push
# 	end

# 	def dequeue
# 		@inStack.store.length.times do
# 		 @outStack.store << @inStack.store.pop
# 		 end
# 	end

# 	def remove_next_in_line
# 		@outStack.store.pop
# 	end
	

# end

# my_queue = QueuedStack.new

# my_queue.enqueue("a")
# my_queue.enqueue("b")
# my_queue.enqueue("c")

# my_queue.dequeue

# p my_queue

# my_queue.enqueue("d")

# my_queue.enqueue("e")

# p my_queue




class Stack

	attr_reader :storage

	def initialize
		@storage = []
	end

	def push_into_stack(value)
		@storage << value
	end

	def pop_from_stack
		@storage.pop
	end

	def peek_at_next
		@storage.last
	end

	def is_empty?
		@storage.nil?
	end

end


class QueuedStack

	attr_accessor :front_of_stack, :back_of_stack
	def initialize
	@front_of_stack = Stack.new
	@back_of_stack = Stack.new
	end

	def enqueue(value)
		@front_of_stack.storage << value
		
	end

	def dequeue
		@front_of_stack.storage.length.times do
			@back_of_stack.storage << @front_of_stack.pop_from_stack
		end
	end

	def remove_from_queue
		@back_of_stack.pop_from_stack
	end

end

my_line = QueuedStack.new

my_line.enqueue(1)
my_line.enqueue(2)
my_line.enqueue(3)


p my_line.dequeue

p my_line.back_of_stack

p my_line.remove_from_queue






class Stack 

	attr_accessor :store
	
	def initialize
		@store = []
	end

end

class QueuedStack

	attr_reader :inStack, :outStack

	def initialize
		@inStack = Stack.new
		@outStack = Stack.new
	end

	def enqueue(item_to_push)
		@inStack.store << item_to_push
	end

	def dequeue
		@inStack.store.length.times do
		 @outStack.store << @inStack.store.pop
		 end
	end

	def remove_next_in_line
		@outStack.store.pop
	end
	

end

my_queue = QueuedStack.new

my_queue.enqueue("a")
my_queue.enqueue("b")
my_queue.enqueue("c")

my_queue.dequeue

p my_queue

my_queue.enqueue("d")

my_queue.enqueue("e")

p my_queue









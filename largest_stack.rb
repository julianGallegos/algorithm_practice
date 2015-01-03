class Stack

	attr_accessor :store

	def initialize
		@store = []
	end

	def push_to_stack(item_to_push)
		@store << item_to_push
	end

	def pop_from_stack
		@store.pop
	end

	def peek_at_next_item
		@store.last
	end

	def is_empty?
		@store.empty?
	end

end


class MaxStack

	attr_accessor :storage_stack, :maximum

	def initialize
		@storage_stack = Stack.new
		@maximum = Stack.new
	end


#brute force solution to check what the highest integer is as it's pushed into maximum stack
	def push_into_stack(number)
		@storage_stack.store << number
		
		if @maximum.is_empty? 
			@maximum.store << number

		elsif @maximum.peek_at_next_item < number
			@maximum.pop_from_stack
			@maximum.store << number
		else
			return @maximum
		end
			p "the maximum value is #{@maximum.store}"
			return @storage_stack.store
	end

	def pop_from_stack
		if @maximum.store.last == @storage_stack.store.pop
			 @maximum.store.pop
			 @maximum.store << @storage_stack.store.max
		else
			@maximum.store = []
		end
		@storage_stack.pop_from_stack
		p "the maximum value is #{@maximum.store}"
	end

end




my_list = MaxStack.new

my_list.push_into_stack(1)
my_list.push_into_stack(2)
my_list.push_into_stack(3)
my_list.push_into_stack(20)
my_list.push_into_stack(5)
my_list.push_into_stack(200)


my_list.storage_stack.store



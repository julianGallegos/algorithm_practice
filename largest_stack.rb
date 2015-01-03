class Stack

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
		@store.nil?
	end

end


class MaxStack

	def initialize
		@storage_stack = Stack.new
		@maxium_stack = Stack.new
	end

	def push_into_stack(number)
		#check if the input number is larger than all the values in the maximum stack
		#if there is no number, push number into maximum stack
		#elsif the number is bigger than all the numbers in the stack, push that number into max stack
		#elsif the number is smaller, don't push it into the stack
		#return the largest number
	end

end
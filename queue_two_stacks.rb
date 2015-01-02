class Stack 

	def initialize
		@store = []
	end

	def push(item_to_push)
		@store << item_to_push
	end

	def pop
		@store.pop
	end

	def peek_at_next_item
		@store.last
	end

	def empty?
		@store.empty?
	end

end




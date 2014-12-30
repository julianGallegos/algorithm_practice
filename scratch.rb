# write a function that determines how many times each character occurs in a given input string

# def count_characters(input_string)
# 	character_hash = Hash.new(0)
# 	split_input_string = input_string.split("")
# 	p split_input_string

# 	split_input_string.each do |char|
# 		character_hash[char] += 1
# 	end
# 	p character_hash
# end

# count_characters("hhhhhhhhiiiii")






#create a method that takes in a string then determines 
# how many times each word occurs in that string



# def word_count(input_string)

# 	word_hash = Hash.new(0)

# 	split_words_into_array = input_string.split(" ")
# 	split_words_into_array.each do |words|
# 	 	word_hash[words] += 1
# 	end

# 	p word_hash
# end

# word_count("hello hello world sky sun sun sun hello")



# create a method that takes input array and adds all numbers
# from array except from itself

# def get_products_of_all_ints_except_at_index(input_array)
# 	product_hash = Hash.new(0)
# 	input_array.each do |num|
# 		product_hash[num] = (input_array - [num]).inject(:*)
# 	end
#   	product_hash.map {|key, value| p value}
# end


# get_products_of_all_ints_except_at_index([1,7,3,4])
# p "*"*50
# get_products_of_all_ints_except_at_index([1,2,3,4])




#create method that checks array for largest value based on index

# def stock_prices_yesterday(traded_prices)
# 	prices_hash = Hash.new(0)

# 	traded_prices.each_with_index do |value, index|
# 		prices_hash[index] = value
# 	end

# 	p prices_hash
# end

# stock_prices_yesterday([400, 410, 395, 470])



# #given an array of 3 integers, find the highest product you can get from the 3 integers

# def highest_product(input_array)

# end



# def condensed_meeting_times(meeting_times)
# 	condensed_times = []
# 	sorted_times = meeting_times.sort!

# 	sorted_times.each do |time|
# 		next if time < 
# 		condensed_times << time
# 	end
# 	# return condensed_times
# 	p condensed_times
# end

# condensed_meeting_times([1,3,2,4])



def combo_of_ways(amount, denominations)
	#convert amount and denominations to a hash, amount will be key and demoninations will be key values
	denominations.each do |number|

end


combo_of_ways(4, [1,2,3])





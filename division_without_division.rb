
def divide_number(dividend, divisor)
	num_of_times_added = 0
	current_total = 0
	while current_total < dividend
		num_of_times_added += 1
		current_total += divisor
		if current_total > dividend
			num_of_times_added -= 1
		end
	end
	return num_of_times_added
end

describe "divide_number" do 

	it "divide_number(0, 0)" do
		expect(divide_number(0, 0)).to eq(0)
	end

	it "divide_number(1, 1)" do
		expect(divide_number(1, 1)).to eq(1)
	end

	it "divide_number(25, 5)" do
		expect(divide_number(25, 5)).to eq(5)
	end

	it "divide_number(10000, 2)" do 
		expect(divide_number(10000, 2)).to eq(5000)
	end

	it "divide_number(49, 7)" do 
		expect(divide_number(49, 7)).to eq(7)
	end
end


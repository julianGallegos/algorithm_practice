
def make_change(change_amount)
	number_of_coins = {}

	

	number_of_coins[:quarter] = change_amount / 25 

	#remaining_change updates the change_amount after each conversion

	remaining_change = change_amount - number_of_coins[:quarter] * 25

	number_of_coins[:dime] = remaining_change / 10

	remaining_change = remaining_change - number_of_coins[:dime] * 10

	number_of_coins[:nickels] = remaining_change / 5

	remaining_change = remaining_change - number_of_coins[:nickels] * 5

	number_of_coins[:pennies] = remaining_change

	return number_of_coins 

end


describe "make_change" do

	it "make_change(0)" do
		expect(make_change(0)).to eq({:quarter => 0, :dime => 0, :nickels => 0, :pennies => 0})
	end
	
	it "make_change(1)" do
		expect(make_change(1)).to eq({:quarter => 0, :dime => 0, :nickels => 0, :pennies => 1})
	end

	it "make_change(99)" do
		expect(make_change(99)).to eq({:quarter => 3, :dime => 2, :nickels => 0, :pennies => 4})
	end

	it "make_change(25)" do
		expect(make_change(25)).to eq({:quarter => 1, :dime => 0, :nickels => 0, :pennies => 0})
	end

	it "make_change(50)" do
		expect(make_change(50)).to eq({:quarter => 2, :dime => 0, :nickels => 0, :pennies => 0})
	end

	it "make_change(37)" do
		expect(make_change(37)).to eq({:quarter => 1, :dime => 1, :nickels => 0, :pennies => 2})
	end

	it "make_change(41)" do
		expect(make_change(41)).to eq({:quarter => 1, :dime => 1, :nickels => 1, :pennies => 1})
	end


end
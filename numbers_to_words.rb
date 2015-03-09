def numbers_to_words(input_number)

	if input_number == 0
		return "zero"
	end

	string_of_numbers = ""

	number_hash = {

		900 => " nine hundred",
		800 => " eight hundred",
		700 => " seven hundred",
		600 => " six hundred",
		500 => " five hundred",
		400 => " four hundred",
		300 => " three hundred",
		200 => " two hundred",
		100 => " one hundred",
		90 => " ninty",
		80 => " eighty",
		70 => " seventy",
		60 => " sixty",
		50 => " fifty",
		40 => " forty",
		30 => " thirty",
		20 => " twenty",
		19 => " ninteen",
		18 => " eighteen",
		17 => " seventeen",
		16 => " sixteen",
 		15 => " fifteen",
		14 => " fourteen",
		13 => " thirteen",
		12 => " twelve",
		11 => " eleven",
		10 => " ten",
		9 => " nine",
		8 => " eight",
		7 => " seven",
		6 => " six",
		5 => " five",
		4 => " four",
		3 => " three",
		2 => " two",
		1 => " one"
	}

	number_hash.each do |key, value|
	
		string_of_numbers << value * (input_number / key)
		input_number = input_number % key
		end

	string_of_numbers
	
end



describe "numbers_to_words" do

	it "numbers_to_words(0)" do 
		expect(numbers_to_words(0)).to eq("zero")
	end

	it "numbers_to_words(1)" do 
		expect(numbers_to_words(1)).to eq(" one")
	end

	it "numbers_to_words(10)" do
		expect(numbers_to_words(10)).to eq(" ten")
	end

	it "numbers_to_words(90)" do 
		expect(numbers_to_words(90)). to eq(" ninty")
	end

	it "numbers_to_words(73)" do
		expect(numbers_to_words(73)). to eq(" seventy three")
	end	

	it "numbers_to_words(199)" do
		expect(numbers_to_words(199)). to eq(" one hundred ninty nine")
	end

	it "numbers_to_words(941)" do
		expect(numbers_to_words(941)).to eq(" nine hundred forty one")
	end

	it "numbers_to_words(982)" do
		expect(numbers_to_words(982)).to eq(" nine hundred eighty two")
	end
end
def roman_numeral(input_number)

	converted_number = ""

	roman_number_hash = {
		1000 => "M",
		 900 => "CM",
		 500 => "D",
		 400 => "CD",
     100 => "C",
     90 => "XC",
     50 => "L",
     40 => "XL",
     10 => "X",
     9 => "IX",
     5 => "V",
     4 => "IV",
     1 => "I"
    }

  roman_number_hash.each do |key, value|
   	converted_number << value * (input_number / key) 
   	input_number = input_number % key
	end
	converted_number
end

describe "roman_numeral" do 

	it "roman_numeral(1)" do
		expect(roman_numeral(1)).to eq("I")
	end

	it "roman_numeral(3)" do 
		expect(roman_numeral(3)).to eq("III")
	end

	it "roman_numeral(5)" do
		expect(roman_numeral(5)).to eq("V")
	end

	it "roman_numbers(11)" do 
		expect(roman_numeral(11)).to eq("XI")
	end

	it "roman_numeral(1941)" do
		expect(roman_numeral(1941)).to eq("MCMXLI")
	end

	it "roman_numeral(100000)" do
		expect(roman_numeral(10000)).to eq("MMMMMMMMMM")
	end
	
end

def fizzbuzz(input_number)
  
  results = []

  (1..input_number).each do |num|
  	if num % 15 == 0
  		results << "fizzbuzz"
  	elsif num % 5 == 0
  		results << "buzz"
  	elsif num % 3 == 0
  		results << "fizz"
  	else 
  		results << num
  	end
  end
	return results

end




describe "fizzbuzz" do 

	it "#fizzbuzz(3)" do 
		expect(fizzbuzz(3)).to eq [1, 2, "fizz"]
	end

  it "#fizzbuzz(5)" do 
    expect(fizzbuzz(5)).to eq [1, 2, "fizz", 4, "buzz"]
  end

  it "#fizzbuzz(15)" do 
    expect(fizzbuzz(15)).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz"]
  end

  it "#fizzbuzz(0)" do 
    expect(fizzbuzz(0)).to eq []
  end

  it "#fizzbuzz(2)" do
    expect(fizzbuzz(2)).to eq [1,2]
  end



end
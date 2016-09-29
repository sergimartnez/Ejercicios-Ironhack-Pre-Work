#Ejericio 1


for item in 1..100
	primer = item.to_s.chars
	if (item%5==0 && item%3==0 && primer[0].to_i == 1)
		puts "FizzBuzzBang"
	elsif (primer[0].to_i == 1 && item%3==0)
		puts "FizzBang"
	elsif (primer[0].to_i == 1 && item%5==0)
		puts "BuzzBang"
	elsif (primer[0].to_i == 1)
		puts "Bang"
	elsif (item%5==0 && item%3==0)
		puts "FizzBuzz"
	elsif (item%3==0)
		puts "Fizz"
	elsif (item%5==0)
		puts "Buzz"
	
	else
		puts item
	end
end

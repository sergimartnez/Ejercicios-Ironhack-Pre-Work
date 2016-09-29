#Ejericio 2


for item in 1..100
	primer = item.to_s.chars
	result = ""
	if item%3 == 0
		result << "Fizz"
	end	
	if item%5 == 0
		result << "Buzz"
	end
	if primer[0].to_i == 1
		result << "Bang"
	end
	if result == ""
		result = item
	end
	puts result
end

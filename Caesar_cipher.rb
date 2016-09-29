def solve_cipher(input, deviation)
	array_chars = input.split("")
	for character in array_chars
	  	if character == " "
	  		print " "
	  	else
		  	val = character.ord
		  	val = val + deviation
		  	new_char = val.chr
		  	print new_char
		end

	end
	puts "\n"
end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)
# should return "hello"
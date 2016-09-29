def order_words (palabras)
	palabras.sort
end

sentence = "Fools fall for foolish follies."
sentence = sentence.downcase
sentence.gsub(/[^a-z0-9\s]/i, '')
sentence_array = sentence.split(' ')
puts order_words(sentence_array)
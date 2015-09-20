def caesar_cypher(string, num)
	new_word = ""
	alphabet = (("a".."z").to_a).concat(("A".."Z").to_a)
	
	string.each_char do |char|
		if !alphabet.include? char
			new_word += char
		else
			new_word += alphabet[alphabet.index(char.downcase) - num]
		end
	end
	
	return new_word.capitalize
end

puts caesar_cypher("String", 2)

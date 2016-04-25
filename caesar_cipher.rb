def caesar_cipher(string, shift)
	alphabet = "abcdefghijklmnopqrstuvwxyz".reverse
	string.gsub!(/\w/) do |letter| 
		 letter == letter.upcase ? alphabet[alphabet.index(letter.downcase)-shift].upcase : alphabet[alphabet.index(letter.downcase)-shift]
	end
end

puts caesar_cipher("What a string!", 5)
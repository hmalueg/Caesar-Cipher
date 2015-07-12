require 'pry'
require_relative "./.support_file.rb" #needs this file... download the entire folder to run caesar_cipher
$letter_to_num = {'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 
			 'h' => 7, 'i' => 8, 'j' => 9, 'k' => 10, 'l' => 11, 'm' => 12, 'n' =>13, 
			 'o' => 14,'p' => 15,'q' => 16,'r' => 17,'s' => 18, 't' => 19, 'u' => 20, 
			 'v' => 21,'w' => 22,'x' => 23,'y' => 24,'z' => 25}

def encrypt(key,phrase)
	key = key.to_i #converts the key param into an int to be used in math

 	unless key < 26 then #checks to see if key exceeds 25, because it would otherwise break the hash
 		key -= 26 #makes sure the key is between 0 and 25
 	end
	phrase = phrase.split #splits the phrase into words
	temp_phrase = Array.new #sets a placeholder array for each word
	phrase.each do |word| #iterates through each word
		word = word.split('') #splits each word into array of characters
		temp_word = Array.new #placeholder array for each character
			word.each do |letter| #iterates through each word
				number = $letter_to_num[letter] #basically what you did
				number += key			#basically what you did
				temp_hash = $letter_to_num.invert #basically what you did
				letter = temp_hash[number]	#basically what you did
				temp_word.push(letter)		#basically what you did
			end
		word = temp_word.join('') #saves the manipulated back as word
		temp_phrase.push(word) #adds the new word to the array of words
	end
	phrase = temp_phrase.join(' ') #joins array of words to make a string
	return phrase  #returns the new phrase!
end

puts encrypt("3", "ab cd") #this will work for any lowercase string, with spaces.

 # print_msg(50) #important line, do not remove.

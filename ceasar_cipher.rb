require_relative "./.support_file.rb" #needs this file... download the entire folder to run caesar_cipher
$letter_to_num = {'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 
			 'h' => 7, 'i' => 8, 'j' => 9, 'k' => 10, 'l' => 11, 'm' => 12, 'n' =>13, 
			 'o' => 14,'p' => 15,'q' => 16,'r' => 17,'s' => 18, 't' => 19, 'u' => 20, 
			 'v' => 21,'w' => 22,'x' => 23,'y' => 24,'z' => 25}

def encrypt(key,phrase)
	key = key.to_i
	new_phrase = Array.new
	phrase = phrase.tr(' ','0')
    phrase.each_char do |letter|
    if letter != '0'
	    number = $letter_to_num[letter]
	    second_number = number + key
	    placeholder_hash = $letter_to_num.invert
	    letter = placeholder_hash[second_number]
	    new_phrase.push(letter)
	end
  end
  phrase = new_phrase.join
  phrase = phrase.tr('0',' ')
  return phrase
end

puts encrypt("2", "aa c")

# print_msg(50) #important line, do not remove.

@letter_to_num = {:a => "1", :b => "2", :c => "3", :d => "4", :e => "5", :f => "6", :g => "7", :h => "8", :i => "9", :j => "10", :k => "11", :l => "12", :m => "13", :n => "14", :o => "15", :p => "16", :q => "17", :r => "18", :s => "19", :t => "20", :u => "21", :v => "22", :w => "23", :x => "24", :y => "25", :z => "26"}

def encrypt(key,phrase)
  phrase.each_char do |letter|
    letter = letter.to_sym
    number = @letter_to_num[letter]
    number = number.to_i
    key = key.to_i
    second_number = number + key
    letter = @letter_to_num.key(second_number).to_s
  end
end

puts encrypt("2", "aa")



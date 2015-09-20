def encrypt(phrase,key)
  arr = Array.new
  phrase.upcase.each_byte do |c|
    if 90 - c < key.to_i
      arr << (c + key.to_i) - 26
    elsif c > 64 && c < 90
      arr << c + key.to_i
    else
      arr << c
    end
  end
  arr.map{|i| i.chr.downcase}.join('')
end

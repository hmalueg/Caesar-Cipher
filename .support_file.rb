def print_msg(time)
  array = Array.new
  time.times do |x|
  	mem_s = rand(45)
    print "<3 "*(time/2)
    array.push(rand(100))
    print "\n" 
    array.push(rand(100))
  end
  array.push(rand(100))
  array.push(rand(100))
end

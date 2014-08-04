#job application time!
 
(1..100).each do |i|
	output = "Fizz" if i % 3 == 0
    ((output.nil? && output = "Buzz") || output += "Buzz") if i % 5 == 0
       
    puts output ? output : i
end

# (name2.nil? && name2 = "farts3") || name2 += "farts2"
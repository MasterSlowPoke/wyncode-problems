def max_refactor(args)
	#args is being passed to test_max, so it is already an array
	largest = args[0]
    args.each do |n| 
    	largest = largest > n ? largest : n 
    end
    return largest
end
 
def test_max(*args)
	puts "Testing max_refactor(#{args}), retrurns that #{max_refactor(args)} is largest"
end
 
test_max(-1,0)
test_max(0,1,5)
test_max(-1,1,2,3,4,5,6,7,8,5,4,3,2,1)
test_max(23,32,11)
test_max(1.0,1.0,1.0,1.0)
test_max(1999,-2000,1999, 2999)
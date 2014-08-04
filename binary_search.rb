def binary_search(in_arr, target)
	start_pos = 0
	mid_pos = in_arr.length / 2
	end_pos = in_arr.length - 1
	steps = 0

	puts "Searching array of size #{in_arr.size}"

	loop do
		puts "Searching from element #{start_pos} to #{end_pos}. #{end_pos - start_pos + 1} positions possible."

		value = in_arr[mid_pos]
		comparison = block_given? ? yield(value, target) : value <=> target

		case comparison
		when 1
			# p "s, m, v, e", start_pos, mid_pos, value, end_pos
			puts "#{target} is to the left of #{value}."
			end_pos = mid_pos - 1
			mid_pos = (start_pos + end_pos) / 2
		when -1
			# p "s, m, v, e", start_pos, mid_pos, value, end_pos
			puts "#{target} is to the right of #{value}."
			start_pos = mid_pos + 1
			mid_pos = (start_pos + end_pos) / 2
		when 0 
			puts "#{target} found at position \##{mid_pos}. Took #{steps + 1} steps."
			return mid_pos
		when nil
			puts "#{value} isn't comparable to #{in_arr[mid_pos]}"
			return nil
		end

		if (end_pos == start_pos && in_arr[start_pos] != target) || start_pos > end_pos || start_pos > in_arr.length || end_pos < 0
			puts "#{target} not in array."
			return nil
		end

		steps += 1
		return nil if steps > 1000
	end
end

arr = ("a".."zzzzz").to_a

val = "craig"
loc = binary_search(arr, val) { |left, right|
	# return nil of they're not the same thing
	next nil if left.class != right.class
	# return spaceship if not strings
	next left <=> right unless left.is_a?(String) && right.is_a?(String)
	# change the spaceship so that a n letter word is less than a (n + m) letter word where m > n
	next 1 if left.length > right.length 
	# spaceship is fine otherwise
	next left <=> right
}

puts "#{arr[loc]} == #{val}" if loc != nil


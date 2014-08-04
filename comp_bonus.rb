arr = [1,1,2,2,3,3,]

p arr.uniq

uniq_arr = []
arr.each do |n|
	uniq_arr << n unless uniq_arr.include? n
end
p uniq_arr